<?php do_action('init'); ?>
<?php do_action('frontend_init'); ?>
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="shortcut icon" type="image/png" href=""/>

    <title>  LOOBV - LOCATION </title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;1,400&display=swap" rel="stylesheet">
<?php
    $hh_params = ['lazy_load' => get_option('enable_lazyload', 'off'),'rtl' => is_rtl()
    ];
?>
    <script> var hh_params = <?php echo json_encode($hh_params); ?> </script>

    <?php do_action('header'); ?>
    <?php do_action('init_header'); ?>
    <?php do_action('init_frontend_header'); ?>
    @php
        $body_class = isset($bodyClass)? $bodyClass: '';
        if(is_user_logged_in() && (is_admin() || is_partner())){
            $body_class .= ' has-admin-bar';
        }
    @endphp
</head>
<body class="awe-booking {{is_rtl()? 'rtl': ''}} {{ $body_class }}">
<?php do_action('after_body_frontend'); ?>
<nav id="mobile-navigation" class="main-navigation mobile-natigation d-lg-none"
     aria-label="{{__('Top Menu')}}">
    <div class="menu-primary-container">
        <?php
        if (has_nav_primary()) {
            get_nav([
                'location' => 'primary',
                'walker' => 'main-mobile'
            ]);
        }
        ?>
    </div>
</nav>

@include('common.loading', ['class' => 'page-loading'])
@if(!is_user_logged_in())
    <div id="hh-login-modal" class="modal fade modal-no-footer" tabindex="-1" role="dialog"
         aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title text-uppercase">{{__('Connexion')}}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                    </button>
                </div>
                <div class="modal-body">
                    <form id="hh-login-form" class="form form-sm form-action" action="{{ url('auth/login') }}"
                          data-reload-time="1500"
                          method="post">
                        @include('common.loading')
                        <div class="form-group mb-3">
                            <label for="email-login-form">{{__('Adresse e-mail')}}</label>
                            <input class="form-control has-validation" data-validation="required" type="text"
                                   id="email-login-form" name="email" placeholder="{{__('Entrer votre Email')}}">
                        </div>
                        <div class="form-group mb-3">
                            <label for="password-login-form">{{__('Mot de passe')}}</label>
                            <input class="form-control has-validation" data-validation="required|min:6:ms"
                                   type="password" id="password-login-form" name="password"
                                   placeholder="{{__('Tapez votre mot de passe')}}">
                        </div>
                        <div class="form-group mb-3">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="checkbox-signin-login-form"
                                       checked>
                                <label class="custom-control-label"
                                       for="checkbox-signin-login-form">{{__('Souviens-toi de moi')}}</label>
                            </div>
                        </div>
                        <div class="form-group mb-0 text-center">
                            {!! referer_field(false) !!}
                            <button class="btn btn-primary btn-block text-uppercase"
                                    type="submit"> {{__("S'identifier")}}</button>
                        </div>
                        <div class="form-message"></div>
                        @if(has_social_login())
                            <div class="text-center">
                                <p class="mt-3 text-muted">{{__('Connectez-vous avec')}}</p>
                                <ul class="social-list list-inline mt-3 mb-0">
                                    @if(social_enable('facebook'))
                                        <li class="list-inline-item">
                                            <a href="{{ FacebookLogin::get_inst()->getLoginUrl() }}"
                                               class="social-list-item border-primary text-primary"><i
                                                        class="mdi mdi-facebook"></i></a>
                                        </li>
                                    @endif
                                    @if(social_enable('google'))
                                        <li class="list-inline-item">
                                            <a href="{{ GoogleLogin::get_inst()->getLoginUrl() }}"
                                               class="social-list-item border-danger text-danger"><i
                                                        class="mdi mdi-google"></i></a>
                                        </li>
                                    @endif
                                </ul>
                            </div>
                        @endif
                        <div class="mt-3 d-sm-flex align-items-center justify-content-between">
                            <p>{{__("Vous n'avez pas de compte?")}}
                                <a href="javascript: void(0)" data-toggle="modal" data-target="#hh-register-modal"
                                   class="font-weight-bold">{{__("S'inscrire")}}</a>
                            </p>
                            <p>
                                <a href="javascript: void(0)" data-toggle="modal" data-target="#hh-fogot-password-modal"
                                   class="font-weight-bold">{{__('Mot de passe oublié ?')}}</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div><!-- /.modal -->
    <div id="hh-register-modal" class="modal fade modal-no-footer" tabindex="-1" role="dialog"
         aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title text-uppercase" style="text-align:center">{{__("S'inscrire")}}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                    </button>
                </div>
                <div class="modal-body">
                    <form id="hh-sign-up-form" action="{{ url('auth/sign-up') }}" method="post" data-reload-time="1500"
                          class="form form-action">
                        @include('common.loading')
                        <div class="form-group">
                            <label for="first-name-reg-form">{{__('Prénom')}}</label>
                            <input class="form-control" type="text" id="first-name-reg-form" name="first_name"
                                   placeholder="{{__('Prénom')}}">
                        </div>
                        <div class="form-group">
                            <label for="last-name-reg-form">{{__('Nom')}}</label>
                            <input class="form-control" type="text" id="last-name-reg-form" name="last_name"
                                   placeholder="{{__('Nom')}}">
                        </div>
                        <div class="form-group">
                            <label for="email-address-reg-form">{{__('Adresse e-mail')}}</label>
                            <input class="form-control has-validation" data-validation="required|email" type="email"
                                   id="email-address-reg-form" name="email" placeholder="{{__('Adresse e-mail')}}">
                        </div>
                        <div class="form-group">
                            <label for="password-reg-form">{{__('Password')}}</label>
                            <input class="form-control has-validation" data-validation="required|min:6:ms"
                                   name="password" type="password" id="password-reg-form"
                                   placeholder="{{__('Mot de passe')}}">
                        </div>
                        <div class="form-group">
                            <div class="checkbox checkbox-success">
                                <input type="checkbox" id="reg-term-condition" name="term_condition" value="1">
                                <label for="reg-term-condition">
                                    {!! sprintf(__("J'accepte %s"), '<a class="c-pink" href="'.get_the_permalink(get_option('term_condition_page'), '', 'page').'" class="text-dark">'. __('Terms and Conditions') .'</a>') !!}
                                </label>
                            </div>
                        </div>
                        <div class="form-group mb-0 text-center">
                            <button class="btn btn-primary btn-block text-uppercase"
                                    type="submit"> {{__("S'inscrire")}}</button>
                        </div>
                        <div class="form-message"></div>
                        <div class="mt-3 d-sm-flex align-items-center justify-content-between">
                            <p>{{__('Avez vous un compte?')}}
                                <a href="javascript: void(0)" data-toggle="modal" data-target="#hh-login-modal"
                                   class="font-weight-bold">{{__('Connectez-vous')}}</a>
                            </p>
                        </div>
                    </form>

                    @if(has_social_login())
                        <div class="text-center">
                            <h5 class="mt-3 text-muted">{{__('S\'inscrire en utilisant')}}</h5>
                            <ul class="social-list list-inline mt-3 mb-0">
                                @if(social_enable('facebook'))
                                    <li class="list-inline-item">
                                        <a href="{{ FacebookLogin::get_inst()->getLoginUrl() }}"
                                           class="social-list-item border-primary text-primary"><i
                                                    class="mdi mdi-facebook"></i></a>
                                    </li>
                                @endif
                                @if(social_enable('google'))
                                    <li class="list-inline-item">
                                        <a href="{{ GoogleLogin::get_inst()->getLoginUrl() }}"
                                           class="social-list-item border-danger text-danger"><i
                                                    class="mdi mdi-google"></i></a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div><!-- /.modal -->
    <div id="hh-fogot-password-modal" class="modal fade modal-no-footer" tabindex="-1" role="dialog"
         aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title text-uppercase">{{__('réinitialiser le mot de passe')}}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                    </button>
                </div>
                <div class="modal-body">
                    <form id="hh-reset-password-form" action="{{ url('auth/reset-password') }}" method="post"
                          data-reload-time="1500"
                          class="form form-action">
                        @include('common.loading')
                        <div class="form-group">
                            <label for="email-address-reset-pass-form">{{__('Adresse e-mail')}}</label>
                            <input class="form-control has-validation" data-validation="required|email" type="email"
                                   id="email-address-reset-pass-form" name="email" placeholder="{{__('Email')}}">
                        </div>
                        <div class="form-group mb-0 text-center">
                            <button class="btn btn-primary btn-block text-uppercase"
                                    type="submit"> {{__('réinitialiser le mot de passe')}}</button>
                        </div>
                        <div class="form-message"></div>
                    </form>
                </div>
            </div>
        </div>
    </div><!-- /.modal -->
@endif

<div class="body-wrapper">
    <header id="header" class="header">
    <span class="d-block d-lg-none" id="toggle-mobile-menu"><span class="top"></span>
    <span class="center"></span>
    <span class="bottom"></span>
    </span>
    <a href="{{ url('/') }}" id="logo"> <img src="{{ asset('images/frontend/logo.png') }}" alt="img-logo" class="img-logo"></a>
        <nav id="site-navigation" class="main-navigation d-none d-lg-block" aria-label="Primary Menu">
            <div class="menu-prmary-container center">
                <ul id="menu-primary-1" class="hh-navigation hh-parent main-menu">
                    <li class="menu-item menu-item-25 "><a href=""> ACCUEIL</a></li>
                    <li class="menu-item menu-item-25 "><a href=""> PRESENTATION</a></li>
                    <li class="menu-item menu-item-25 "><a href=""> RESERVATION</a></li>
                    <li class="menu-item menu-item-25 "><a href="">CONTACT</a></li>
		</ul>
            </div>

        </nav>
        <!-- #site-navigation -->

        <div id="right-navigation" class="right-navigation">
            <ul class="list-unstyled topnav-menu mb-0">
                @if (is_user_logged_in())
                    @php
                        $noti = Notifications::get_inst()->getLatestNotificationByUser(get_current_user_id(), 'to');
                        $user_id = get_current_user_id();
                        $args = [
                            'user_id' => $user_id,
                            'user_encrypt' => hh_encrypt($user_id)
                        ];
                        $userData = get_current_user_data();
                    @endphp
                    <li id="hh-dropdown-notification" class="dropdown notification-list"
                        data-action="{{ url('update-last-time-check-notification') }}"
                        data-params="{{ base64_encode(json_encode($args)) }}">
                        <a class="nav-item dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"
                           role="button" aria-haspopup="false" aria-expanded="false">
                            <i class="fe-bell noti-icon"></i>
                            @if($noti['total'])
                                <span
                                        class="badge badge-danger rounded-circle noti-icon-badge">{{ $noti['total'] }}</span>
                            @endif
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-lg">
                            <!-- item-->
                            <div class="dropdown-item noti-title">
                                <h5 class="m-0">{{__('Notification')}}</h5>
                            </div>
                            @if($noti['total'])
                                <div class="slimscroll noti-scroll">
                                    @foreach($noti['results'] as $noti_item)
                                        <div class="dropdown-item notify-item">
                                            <div class="notify-icon notify-{{ $noti_item->type }}">
                                                @if($noti_item->type == 'booking')
                                                    <i class="fe-calendar"></i>
                                                @elseif($noti_item->type == 'global')
                                                    <i class="fe-shield"></i>
                                                @endif
                                            </div>
                                            <p class="notify-details">{!! balanceTags($noti_item->title) !!}</p>
                                            <p class="text-muted mb-0 user-msg">
                                                <small>{!! balanceTags(get_time_since($noti_item->created_at)) !!}</small>
                                            </p>
                                        </div>
                                    @endforeach
                                </div>
                            @else
                                <p class="text-muted text-center">{{__('No notification yet')}}</p>
                        @endif
                        <!-- All-->
                            <a href="{{ dashboard_url('all-notifications') }}"
                               class="dropdown-item text-center text-primary notify-item notify-all">
                                {{__('View all')}}
                                <i class="fi-arrow-right"></i>
                            </a>
                        </div>
                    </li>
                    <li class="dropdown notification-list">
                        <a class="nav-item dropdown-toggle nav-user waves-effect waves-light" data-toggle="dropdown"
                           href="javascript:void(0);" role="button" aria-haspopup="false" aria-expanded="false">
                            <img src="{{ get_user_avatar($userData->getUserId(), [32,32]) }}" alt="user-image"
                                 class="rounded-circle">
                            <span class="pro-user-name ml-1">
                            {{ get_username($userData->getUserId()) }} <i class="ti-angle-down"></i>
                        </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                            <!-- item-->
                            <div class="dropdown-header noti-title">
                                <h6 class="text-overflow">{{__('Welcome !')}}</h6>
                            </div>
                            <!-- item-->
                            <a href="{{ dashboard_url('profile') }}" class="dropdown-item notify-item">
                                <i class="fe-user"></i>
                                <span>{{__('Profil')}}</span>
                            </a>
                        @if(is_admin() || is_partner())
                            @if(is_enable_service('experience'))
                                <!-- item-->
                                    <a href="{{ dashboard_url('my-experience') }}" class="dropdown-item notify-item">
                                        <i class="fe-book-open"></i>
                                        <span>{{__('Mes expériences')}}</span>
                                    </a>
                            @endif
                            @if(is_enable_service('car'))
                                <!-- item-->
                                    <a href="{{ dashboard_url('my-car') }}" class="dropdown-item notify-item">
                                        <i class="fe-book-open"></i>
                                        <span>{{__('Mes voitures')}}</span>
                                    </a>
                            @endif
                        @endif
                        @if(is_admin())
                            <!-- item-->
                                <a href="{{ dashboard_url('settings') }}" class="dropdown-item notify-item">
                                    <i class="fe-settings "></i>
                                    <span>{{__('Réglages')}}</span>
                                </a>
                        @endif
                        <!-- item-->
                        @php
                            $data = [
                                'user_id' => $userData->getUserId(),
                                'redirect_url' => current_url()
                            ];
                        @endphp
                        <!-- item-->
                            <a href="{{ dashboard_url('/') }}" class="dropdown-item notify-item">
                                <i class="fe-stop-circle "></i>
                                <span>{{__('Tableau de bord')}}</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="javascript:void(0)" data-action="{{ auth_url('logout') }}"
                               data-params="{{ base64_encode(json_encode($data)) }}"
                               class="dropdown-item notify-item hh-link-action">
                                <i class="fe-log-out"></i>
                                <span>{{__('Se déconnecter')}}</span>
                            </a>
                        </div>
                    </li>
                @else
                    <li class="li-login">
                        <a href="javascript: void(0);" class="nav-item "
                           data-toggle="modal"
                           data-target="#hh-login-modal">{{__('Connexion')}}</a>
                    </li>
                    @if(get_option('enable_partner_registration', 'on') == 'on')
                        <li class="d-none d-lg-block li-become">
                            <a href="{{url('become-a-host')}}"
                               class="nav-item become-a-host">{{__('Inscrire votre voiture')}}</a>
                        </li>
                    @endif
                @endif
            </ul>
        </div>
    </header>
        <div id="content-area">
