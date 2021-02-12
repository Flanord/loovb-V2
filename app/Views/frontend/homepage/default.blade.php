@include('frontend.components.header')
@php
enqueue_style('home-slider');
enqueue_script('home-slider');

enqueue_style('mapbox-gl-css');
enqueue_style('mapbox-gl-geocoder-css');
enqueue_script('mapbox-gl-js');
enqueue_script('mapbox-gl-geocoder-js');

enqueue_style('daterangepicker-css');
enqueue_script('daterangepicker-js');
enqueue_script('daterangepicker-lang-js');

enqueue_style('iconrange-slider');
enqueue_script('iconrange-slider');

enqueue_script('owl-carousel');
enqueue_style('owl-carousel');
enqueue_style('owl-carousel-theme');

@endphp
<div class="home-page pb-2">
    <div class="hh-search-form-wrapper">
        <div class="ots-slider-wrapper" data-style="full-screen" data-slider="ots-slider">
            <div class="ots-slider">
                <div class="item">
                    <div class="outer has-background-image" data-src="/images/bgr-call-action1.jpg" style="background-image: url('/images/bgr-call-action1.jpg')"></div>
                    <div class="inner">
                        <div class="img has-background-image" data-src="/images/bgr-call-action1.jpg" style="background-image: url('{/images/bgr-call-action1.jpg');"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="outer has-background-image" data-src="/images/bgr-loobv-proprietaire.jpeg" style="background-image: url('/images/bgr-loobv-proprietaire.jpeg')"></div>
                    <div class="inner">
                        <div class="img has-background-image" data-src="/images/bgr-loobv-proprietaire.jpeg" style="background-image: url('{/images/bgr-loobv-proprietaire.jpeg');"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hh-search-form-section">
            <div class="container">
                <h3 style="color:#FFFFF"> Flanord LFLL </h3>
                <div class="hh-search-form">

                    <div class="tab-content pt-0">
                    <h1 class="h3 info__desc">{{ __('Louez les voitures de particuliers') }}</h1>
                    <form action="{{ get_car_search_page() }}" class="form mt-3" method="get">
                        <div class="form-group">
                            <label>{{__('Debut')}}</label>
                            <select class="form-control option-w3ls" name="pays" id="id_pays" required="">
                                <option value="">Choisir un pays</option>
                                    <option value="1">Gabon</option>
                                    <option value="2">Sénégal</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>{{__('Fin')}}</label>

                            <select class="form-control option-w3ls" name="pays" id="id_pays" required="">
                                <option value="">Choisir une ville</option>
                                <option value="1">Libreville</option>
                                <option value="2">Dakar</option>
                            </select>
                        </div>
                        <div class="form-group form-group-date">
                            <label>{{__('Date')}}</label>
                            <div class="date-wrapper date date-double"
                                data-date-format="{{ hh_date_format_moment() }}"
                                data-single-click="false"
                                data-same-date="true">
                                <input type="text" class="input-hidden check-in-out-field" name="checkInOut">
                                <input type="text" class="input-hidden check-in-field" name="checkIn">
                                <input type="text" class="input-hidden check-out-field" name="checkOut">
                                <span class="check-in-render"
                                    data-date-format="{{ hh_date_format_moment()}}"></span>
                                <span class="divider"></span>
                                <span class="check-out-render"
                                    data-date-format="{{ hh_date_format_moment()}}"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <input class="btn btn-primary w-100" type="submit" name="sm"
                                value="{{__('Rechercher')}}">
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <h2 class="h3 mt-5 mb-3 how">{{__('Pourquoi choisir Loobv ?')}}</h2>

        <div class="list-of-featured-services">
            <div class="row">
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="info-icon">
                            <img src="/images/afriloc/tranquillite.png" alt="" width="100px" height="100px" class="img-fluid">
                        </div><!-- end info-icon-->
                        <div class="info-content">
                            <h4 class="info__title">Créez votre annonce gratuitement</h4>
                            <p class="info__desc">
                                En quelques clics, vous déposez gratuitement votre annonce sur le site et à vous les locations!
                            </p>
                        </div><!-- end info-content -->
                    </div><!-- end icon-box -->
                </div><!-- end col-lg-3 -->
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="info-icon">
                            <br>
                            <img src="/images/afriloc/car.png" alt="" width="100px" height="100px" class="img-fluid">
                        </div><!-- end info-icon-->
                        <div class="info-content">
                            <h4 class="info__title">Des possibilités sans fin de réservations</h4>
                            <p class="info__desc">
                                Choisissez parmi des centaines de modèles que vous ne trouverez nulle part ailleurs.
                            </p>
                        </div><!-- end info-content -->
                    </div><!-- end icon-box -->
                </div><!-- end col-lg-3 -->
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="info-icon">
                            <br>
                            <img src="/images/afriloc/confiance.png" alt="" width="100px" height="100px" class="img-fluid">
                        </div><!-- end info-icon-->
                        <div class="info-content">
                            <h4 class="info__title">Une communauté de confiance</h4>
                            <p class="info__desc">
                                Un sytème d'évaluations et d'avis entre les membres permet de louer une voiture en toute confiance.
                            </p>
                        </div><!-- end info-content -->
                    </div><!-- end icon-box -->
                </div><!-- end col-lg-3 -->

                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="info-icon">
                            <br>
                            <img src="{{ asset('images/afriloc/securite.png') }}" alt="" width="100px" height="100px" class="img-fluid">
                        </div><!-- end info-icon-->
                        <div class="info-content">
                            <h4 class="info__title">Paiement sécurisé de toutes les transactions</h4>
                            <p class="info__desc">
                                De la réservation au séjour, vivez une expérience inoubliable.
                            </p>
                        </div><!-- end info-content -->
                    </div><!-- end icon-box -->
                </div><!-- end col-lg-3 -->

            </div>
        </div>
        <!-- Home in New York -->

        <h2 class="h3 mt-4 ">{{__('Destinations les plus populaires ')}}</h2>
        <p>{{__("Besoin d'inspiration pour vos vacances au cameroun ? Retrouvez notre sélection des destinations les plus populaires et profitez d'un séjour tout confort en location de vacances. Vous cherchez une villa à Douala, un appartement à Douala ou à Yaoundé : vos vacances commencent ici et maintenant.")}}</p>
        <div class="hh-list-of-services">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-3">
                    @include('frontend.home.loop.grid')
                </div>
            </div>
        </div>

        <!-- Destination -->
        <h2 class="h3 mt-4">{{__('Principales villes')}}</h2>
        <p>{{__('Parcourez de beaux endroits où séjourner avec tout le confort de la maison, et plus')}}</p>
        <div class="hh-list-destinations">
            <div class="hh-carousel carousel-padding nav-style2" data-responsive="2" data-margin="15" data-loop="0">
                <div class="owl-carousel">
                    <?php
                    $rand = rand(1, 6);
                    ?>
                    <div class="item">
                        <div class="hh-destination-item">
                            <a href="">
                                <div class="thumbnail has-matchHeight">
                                    <div class="thumbnail-outer">
                                        <div class="thumbnail-inner">
                                            <img src="/images/loobv-weekend.jpeg" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                    <div class="detail">
                                        <h2 class="text-center des-paterm-{{$rand}}"> Libreville</h2>
                                        <div class="count-services d-flex align-items-center justify-content-center mt-3">
                                                <div class="item item-card}">
                                                    <a href="">
                                                        <span class="count">0</span>
                                                        <span class="service">Flo</span>
                                                    </a>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="owl-nav">
                    <a href="javascript:void(0)" class="prev"><i class="ti-angle-left"></i></a>
                    <a href="javascript:void(0)" class="next"><i class="ti-angle-right"></i></a>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-4 mb-4">
        <div class="row pl-2 pr-2">
            <div class="col-lg-8" style="background-color: #f3f3f3;">
                <h3 class="main-text">{{__('Loobv pour les voyageurs')}}</h3>
                <p class="sub-text">{{__('- Accédez à une centaine de véhicules autour de vous en un seul click')}}</p>
                <p class="sub-text">{{__('- Comparez les prix des différents propriétaires')}}</p>
                <p class="sub-text">{{__('- Payez vos réservations avec votre carte bancaire, votre compte Airtel Money ou Orange Money')}}</p>
                <p class="sub-text">{{__('- Gérez vos réservations depuis l\'application Loobv')}}</p>
                <p class="sub-text">{{__('- Découvrez les avis d\'autres voyageurs avant de faire votre résevation.')}}</p>
            </div>
            <div class="col-lg-4 loobv-voyageur">
            </div>
        </div>
    </div>

    <div class="container mt-4">
        <div class="row pl-2 pr-2">
            <div class="col-lg-8" style="background-color: #f3f3f3;">
                <h3 class="main-text">{{__('Loobv pour les propriétaires')}}</h3>
                <p class="sub-text">{{__('- Créez votre annonce gratuitement et connectez en un instant avec des centaines de potentiels voyageurs autour de vous')}}</p>
                <p class="sub-text">{{__('- Gérez et suivez toutes vos locations ou que vous soyez en utilisant l\'application Loobv')}}</p>
                <p class="sub-text">{{__('- Indiquez vos disponibilités directement dans le calendrier de votre annonce')}}</p>
                <p class="sub-text">{{__('- Fixez vous même le prix de vos locations')}}</p>
                <p class="sub-text">{{__('- Découvrez les avis d\'autres propriétaires avant de faire votre résevation.')}}</p>
            </div>
            <div class="col-lg-4 loobv-proprietaire">
            </div>
        </div>
    </div>

    <!-- Call to action -->
    @php
    $page_id = get_option('call_to_action_page');
    $cta_background_id = get_option('call_to_action_background', '');
    @endphp
    @if(!empty($page_id))
    @php
    $link = get_permalink_by_id($page_id, 'page');
    $cta_background_url = '';
    $cta_background_url = get_attachment_url($cta_background_id, 'full');
    @endphp
    <div class="section section-background mt-4 call-to-action pl-4 pr-4 has-background-image" data-src="{{ $cta_background_url }}">
        <div class="container">
            <div class="">
                <div class="row">
                    <div class="col-lg-9">
                        <h5 class="main-text">{{__('Vous n’utilisez pas votre voiture tous les jours ? Louez-la sur Loobv !')}}</h5>
                        <p class="sub-text">{{__('Inscrivez votre voiture gratuitement, louez-la quand vous voulez et remboursez vos frais d’entretien.')}}</p>
                    </div>
                    <div class="col-lg-3">
                        <a href="{{ $link }}" class="btn btn-primary right">{{__('Louer ma voiture')}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif

    <div class="container">
        <h2 class="h3 mt-4">{{__('Besoin d\'une voiture adaptée ?')}}</h2>
        <p>{{__('Trouvez la voiture de votre choix, selon votre besoin')}}</p>
        <div class="hh-list-of-services">
            <div class="hh-carousel carousel-padding nav-style2" data-responsive="22" data-margin="15" data-loop="0">
                <div class="owl-carousel">
                    <div class="item">
                        <div class="">
                            <div class="hh-service-item car grid" data-plugin="matchHeight">
                                <a href="">
                                    <div class="thumbnail">
                                        <div class="thumbnail-outer">
                                            <div class="thumbnail-inner">
                                                <img src="{{ asset('images/loobv-demenagement.jpeg') }}" alt="img" class="img-fluid">
                                            </div>
                                        </div>
                                        <div class="detail" style="padding: 5px 15px 10px;">
                                            <h2 class="title text-overflow"><a href="#">Loobv pour les demenagements</a></h2>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="">
                            <div class="hh-service-item car grid" data-plugin="matchHeight">
                                <a href="">
                                    <div class="thumbnail">
                                        <div class="thumbnail-outer">
                                            <div class="thumbnail-inner">
                                                <img src="{{ asset('images/loobv-weekend.jpeg') }}" alt="img" class="img-fluid">
                                            </div>
                                        </div>
                                        <div class="detail" style="padding: 5px 15px 10px;">
                                            <h2 class="title text-overflow"><a href="#">Loobv pour les weekends</a></h2>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="">
                            <div class="hh-service-item car grid" data-plugin="matchHeight">
                                <a href="">
                                    <div class="thumbnail">
                                        <div class="thumbnail-outer">
                                            <div class="thumbnail-inner">
                                                <img src="{{ asset('images/loobv-deplacement-professionnel.jpeg') }}" alt="img" class="img-fluid">
                                            </div>
                                        </div>
                                        <div class="detail" style="padding: 5px 15px 10px;">
                                            <h2 class="title text-overflow"><a href="#">Déplacements professionnels</a></h2>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="">
                            <div class="hh-service-item car grid" data-plugin="matchHeight">
                                <a href="">
                                    <div class="thumbnail">
                                        <div class="thumbnail-outer">
                                            <div class="thumbnail-inner">
                                                <img src="{{ asset('images/loobv-mariage.jpeg') }}" alt="img" class="img-fluid">
                                            </div>
                                        </div>
                                        <div class="detail" style="padding: 5px 15px 10px;">
                                            <h2 class="title text-overflow"><a href="#">Loobv pour vos mariages</a></h2>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-nav">
                    <a href="javascript:void(0)" class="prev"><i class="ti-angle-left"></i></a>
                    <a href="javascript:void(0)" class="next"><i class="ti-angle-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
@include('frontend.components.footer')
