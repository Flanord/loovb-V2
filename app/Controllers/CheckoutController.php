<?php
namespace App\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use App\Controllers\Services\ExperienceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class CheckoutController extends Controller
{

    public function _checkoutAction(Request $request)
    {
        $paymentMethod = request()->get('payment');

        if (!is_user_logged_in()) {
            return $this->sendJson([
                'status' => 0,
                'message' => view('common.alert', ['type' => 'danger', 'message' => __('Vous devez vous connecter avant pour faire une réservation')])->render(),
                'need_login' => true
            ]);
        }
        $validator = Validator::make($request->all(),
            [
                'firstName' => 'required',
                'lastName' => 'required',
                'email' => 'required|email',
                'phone' => 'required',
                'address' => 'required',
                'payment' => 'required',
                'term_condition' => 'required'
            ],
            [
                'firstName.required' => __('Le prénom est obligatoire'),
                'lastName.required' => __('Le nom est obligatoire'),
                'email.required' => __('Email est obligatoire'),
                'email.email' => __('Le courriel est invalide'),
                'phone.required' => __('Le téléphone est obligatoire'),
                'address.required' => __('L\'adresse est obligatoire'),
               'payment.required' => __('La passerelle est obligatoire'),
                'term_condition.required' => __('Veuillez accepter les termes et conditions')
            ]
        );
        if ($validator->fails()) {
            return $this->sendJson([
                'status' => 0,
                'message' => view('common.alert', ['type' => 'danger', 'message' => $validator->errors()->first()])->render()
            ]);
        }

        if (get_option('use_google_captcha', 'off') == 'on') {
            $recaptcha = new \ReCaptcha\ReCaptcha(get_option('google_captcha_secret_key'));
            $gRecaptchaResponse = request()->get('g-recaptcha-response');
            $resp = $recaptcha->verify($gRecaptchaResponse, $request->ip());
            if (!$resp->isSuccess()) {
                return $this->sendJson([
                    'status' => 0,
                    'message' => view('common.alert', ['type' => 'danger', 'message' => __('Votre demande a été refusée')])->render()
                ]);
            }
        }

        $this->saveUserCheckoutData();

       $payment = get_available_payments($paymentMethod);


       /* if (!$payment) {
            $this->sendJson([
                'status' => 0,
                'message' => view('common.alert', ['type' => 'danger', 'message' => __('Cette passerelle de paiement n\'est pas disponible')])->render()
            ]);
        }*/

        $cart=\Cart::get_inst()->getCart();
        if (!$cart) {
            return $this->sendJson([
                'status' => 0,
                'message' => view('common.alert', ['type' => 'danger', 'message' => __('Le panier est vide , pas de voiture sélectionée')])->render()
            ]);
        }

        do_action('hh_before_create_booking');

        $new_booking_id = BookingController::get_inst()->createBooking();

        if (!$new_booking_id){
            if (!$cart) {
                return $this->sendJson([
                    'status' => 0,
                    'message' => view('common.alert', ['type' => 'danger', 'message' => __('Impossible de créer une nouvelle réservation. Veuillez réessayer !')])->render()
                ]);
            }
        }

        if (method_exists($payment, 'purchase')) {
            $paymentObject = $payment::get_inst();
            $validation = $paymentObject->validation();
            if (is_array($validation) && $validation['status'] === false) {
                return $this->sendJson([
                    'status' => 0,
                    'message' => view('common.alert', ['type' => 'danger', 'message' => $validation['message']])->render()
                ]);
            }
            $responsive = $paymentObject->purchase($new_booking_id);

            if ($responsive['status'] == 'pending') {
                BookingController::get_inst()->deleteBooking($new_booking_id);
                return $this->sendJson([
                    'status' => 0,
                    'message' => view('common.alert', ['type' => 'danger', 'message' => $responsive['message']])->render()
                ]);
            } else {
                \Cart::get_inst()->deleteCart();

                BookingController::get_inst()->updateBookingStatus($new_booking_id, $responsive['status'], true);

                do_action('hh_after_created_booking', $new_booking_id, $responsive['status']);

                $return = [
                    'status' => 1,
                    'message' => view('common.alert', ['type' => 'success', 'message' => $responsive['message']])->render()
                ];
                if (isset($responsive['redirectUrl'])) {
                    $return['redirect'] = $responsive['redirectUrl'];
                }
                if (isset($responsive['redirectForm'])) {
                    $return['redirect_form'] = $responsive['redirectForm'];
                }
                if (isset($responsive['formID'])) {
                    $return['form_id'] = $responsive['formID'];
                }
                return $this->sendJson($return);
            }
        } else {
            return $this->sendJson([
                'status' => 0,
                'message' => view('common.alert', ['type' => 'danger', 'message' => __('Cette passerelle de paiement n\'a pas de méthode d\'achat ')])->render()
            ]);
        }
    }

    public function completePurchase($request)
    {
        $orderID = request()->get('_orderID');
        $order_encrypt = request()->get('_orderEncrypt');
        $paymentMethod = request()->get('_payment');
        $status = request()->get('_status', '1');
        if ($this->checkIsResponsive()) {
            if (hh_compare_encrypt($orderID, $order_encrypt)) {
                $orderObject = get_booking($orderID);
                $oldStatus = $orderObject->status;
                if ($oldStatus == 'incomplete') {
                    if ($status == 0) {
                        BookingController::get_inst()->updateBookingStatus($orderID, 'canceled');
                        do_action('hh_completed_booking', $orderObject);
                    } else {
                        $payment = get_available_payments($paymentMethod);
                        if ($payment && method_exists($payment, 'completePurchase')) {
                            $paymentObject = $payment::get_inst();
                            $responsive = $paymentObject->completePurchase($orderID);
                            do_action('hh_before_check_complete_booking', $orderObject);
                            if ($responsive['status'] == 'completed') {
                                BookingController::get_inst()->updateBookingStatus($orderID, 'completed');
                            } elseif ($responsive['status'] == 'canceled') {
                                BookingController::get_inst()->updateBookingStatus($orderID, 'canceled');
                            } elseif ($responsive['status'] == 'incomplete') {
                                BookingController::get_inst()->updateBookingStatus($orderID, 'incomplete');
                            }
                            if (!empty($responsive['message'])) {
                                Log::debug($responsive['message']);
                            }
                            do_action('hh_completed_booking', $orderObject);
                        }
                    }
                }
            }
        }
    }

    public function checkIsResponsive()
    {
        $params = [
            '_paymentMethod' => request()->get('_payment'),
            '_orderID' => request()->get('_orderID'),
            '_orderEncrypt' => request()->get('_orderEncrypt'),
            '_tokenCode' => request()->get('_tokenCode', '-1'),
            '_status' => request()->get('_status', '-1'),
        ];
        $paymentID = request()->get('_transactionID');
        if (!empty($paymentID)) {
            $params['_transactionID'] = $paymentID;
        }
        $has_string = '';
        foreach ($params as $key => $item) {
            $has_string .= $item . '|';
        }
        $has_string = substr($has_string, 0, -1);
        $newHash = md5($has_string);
        $hash = request()->get('_hash');
        if (empty($hash) || $newHash !== $hash) {
            return false;
        }

        return true;
    }

    public function saveUserCheckoutData()
    {
        $fields = [
            'email' => request()->get('email'),
            'firstName' => request()->get('firstName'),
            'lastName' => request()->get('lastName'),
            'phone' => request()->get('phone'),
            'address' => request()->get('address'),
            'city' => request()->get('city'),
            'postCode' => request()->get('postCode'),
            'country' => request()->get('country'),
        ];

        $fields = apply_filters('hh_user_checkout_data', $fields);

        update_user_meta(get_current_user_id(), 'user_checkout_information', $fields);
    }

    public function _checkoutPage(Request $request)
    {
        $cart = \Cart::get_inst()->getCart();
        return view('frontend.checkout', ['cart' => $cart]);
    }

    public function _thankyouPage(Request $request)
    {
        $orderID = request()->get('_orderID');
        $isResponsive = $this->checkIsResponsive();
        if (!$isResponsive) {
            return redirect(url('/'));
        }
        $this->completePurchase($request);
        reset_booking_data();
        $bookingObject = BookingController::get_inst()->getBookingByID($orderID);
        return view('frontend.thank-you', ['bookingObject' => $bookingObject]);
    }



}
