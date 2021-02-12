@include('dashboard.components.header')
<div class="account-pages login-page hh-dashboard mt-5 mb-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-5">
                <div class="card bg-pattern">
                    <div class="card-body p-4 hh-relative">
                        <form id="hh-login-form" class="form form-sm form-action" action="{{ url('auth/login') }}"
                              data-reload-time="1500"
                              method="post">
                            @include('common.loading')
                            <div class="text-center m-auto">
                                <a class="logo" href="{{ dashboard_url() }}">
                                    <img src="/images/frontend/logo.png" width="150px"  alt="logo loobv" class="footer-logo"/>
                                </a>
                                <p class="text-muted mb-4 mt-3">{{__('Entrez votre compte pour accéder au tableau de bord.')}}</p>
                            </div>
                            <div class="form-group mb-3">
                                <label for="email">{{__('Adresse e-mail')}}</label>
                                <input class="form-control has-validation" data-validation="required" type="text"
                                       id="email" name="email" placeholder="{{__('Entrer votre Email')}}">
                            </div>
                            <div class="form-group mb-3">
                                <label for="password">{{__('Mot de passe')}}</label>
                                <input class="form-control has-validation" data-validation="required|min:6:ms"
                                       type="password" id="password" name="password"
                                       placeholder="{{__('Tapez votre mot de passe')}}">
                            </div>
                            <div class="form-group mb-3">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="checkbox-signin" checked>
                                    <label class="custom-control-label"
                                           for="checkbox-signin">{{__('Souviens-toi de moi')}}</label>
                                </div>
                            </div>
                            <div class="form-group mb-0 text-center">
                                <button class="btn btn-primary btn-block text-uppercase"
                                        type="submit"> {{__('S\'identifier')}}</button>
                            </div>
                            <div class="form-message">

                            </div>

                        </form>
                    </div> <!-- end card-body -->
                </div>
                <!-- end card -->

                <div class="row mt-3">
                    <div class="col-12 text-center">
                        <p><a href="{{ url('auth/reset-password') }}"
                              class="text-white ml-1">{{__('Mot de passe oublié?')}}</a></p>
                        <div class="d-flex align-items-center justify-content-center">
                            <p class="text-white-50 mr-2">
                                {{__('retour à ')}}
                                <a class="text-white mr-1" href="{{url('/')}}">{{__('l\'accueil')}}</a>
                            </p>
                            <p class="text-white-50 ml-2">
                                {{__("Je n'ai pas de compte?")}}
                                <a href="{{ url('auth/sign-up') }}" class="text-white ml-1"><b>{{__('Inscription')}}</b></a>
                            </p>
                        </div>


                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div> <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
@include('dashboard.components.footer')
