@php
    if(!isset($bookingObject)){
        return;
    }
    $status = $bookingObject->status;
    $status_info = booking_status_info($status);
@endphp
@include('frontend.components.header')
<div class="hh-checkout-redirecting pb-5">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-8 offset-md-2">
                <div class="payment-item">
                    <div class="payment-status">
                        <i class="{{ $status_info['icon'] }} payment-icon payment-{{ $status }}"></i>
                    </div>
                    <h4 class="payment-title">
                        {!! balanceTags(__($status_info['payment_text'])) !!}
                    </h4>
                    <div class="payment-desc">
                        {{ sprintf(__('Les détails de la réservation par e-mail seront envoyés à l`\'adresse e-mail : %s'), $bookingObject->email) }}
                    </div>
                    <div class="payment-detail">
                        <div class="item d-flex align-items-center">
                            <div class="col-6">
                                <span>{{__('Code de réservation')}}</span>
                                <span class="ml-4 alert-danger">{{ $bookingObject->booking_id }}</span>
                            </div>

                            <div class="col-6">
                                <span>{{__('Dat de réservation')}}</span>
                                <span class="ml-4">{{ date(hh_date_format(), $bookingObject->created_date) }}</span>
                            </div>

                        </div>
                    </div>
                    <h5 class="mt-5">{{__('Vos informations')}}</h5>
                    <div class="payment-customer-info">
                        <div class="item">
                            <span>{{__('Prénom')}}</span>
                            <span>{{ $bookingObject->first_name }}</span>
                        </div>
                        <div class="item">
                            <span>{{__('Nom de famille')}}</span>
                            <span>{{ $bookingObject->last_name }}</span>
                        </div>
                        <div class="item">
                            <span>{{__('E-mail')}}</span>
                            <span>{{ $bookingObject->email }}</span>
                        </div>
                        <div class="item">
                            <span>{{__('Téléphone')}}</span>
                            <span>{{ $bookingObject->phone }}</span>
                        </div>
                        <div class="item">
                            <span>{{__('Adresse')}}</span>
                            <span>{{ $bookingObject->address }}</span>
                        </div>
                        @if($bookingObject->note)
                        <div class="item">
                            <span>{{__('Information supplementaires')}}</span>
                            <span>{{ $bookingObject->note }}</span>
                        </div>
                            @endif
                    </div>
                    <div class="text-center mt-5">
                        <a href="{{ dashboard_url('all-booking') }}"
                           class="btn btn-danger m-auto">{{__('Accédez à votre réservation')}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('frontend.components.footer')
