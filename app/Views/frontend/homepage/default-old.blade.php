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

$tab_services = list_tabs_service();
@endphp
<div class="home-page pb-5">
    @if(!empty($tab_services))
    <div class="hh-search-form-wrapper">
        <div class="ots-slider-wrapper" data-style="full-screen" data-slider="ots-slider">
            <div class="ots-slider">
                 <div class="item">
                    <div class="outer has-background-image" data-src="/images/bgr-call-action1.jpg" style="background-image: url(/images/bgr-call-action1.jpg)"></div>
                    <div class="inner">
                        <div class="img has-background-image" data-src="/images/bgr-call-action1.jpg" style="background-image: url(/images/bgr-call-action1.jpg);"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hh-search-form-section">
            <div class="container">
                <div class="hh-search-form">
                    @if(count($tab_services) > 1)
                    <div class="nav-wrapper relative" data-tabs-calculation>
                        <ul class="nav nav-tabs" data-tabs>
                            @foreach($tab_services as $key => $item)
                            <li class="nav-item">
                                <a href="#tab-search-{{$item['id']}}" data-toggle="tab" aria-expanded="false" data-tabs-item class="nav-link {{$key == 0 ? 'active' : ''}}">
                                    {{ __($item['label']) }}
                                </a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    <div class="tab-content  @if(count($tab_services) == 1) pt-0 @endif">
                        @foreach($tab_services as $key => $item)
                        <div class="tab-pane {{$key == 0 ? 'active' : ''}}" id="tab-search-{{$item['id']}}">
                            <?php
                            start_get_view();
                            if (View::exists('frontend.' . $item['id'] . '.search.search-form')) {
                            ?>
                                @include('frontend.'. $item['id'] .'.search.search-form')
                            <?php }
                            $content = end_get_view();
                            echo apply_filters('hh_tab_services_html', $content, $item);
                            ?>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif
    <div class="container">
        @if(!empty($tab_services))
        <h2 class="h3 mt-5 mb-3 how">{{__('Pourquoi reserver avec nous ?')}}</h2>

        <div class="list-of-featured-services">
            <div class="row">
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="info-icon">
                            <img src="/images/afriloc/tranquillite.png" alt="" width="100px" height="100px" class="img-fluid">
                        </div><!-- end info-icon-->
                        <div class="info-content">
                            <h4 class="info__title">Vos vacances en toute tranquillité</h4>
                            <p class="info__desc">
                                Bénéficiez d'un support 24h/24, 7j/7 avec notre garantie Réservation en toute Confiance.
                            </p>
                        </div><!-- end info-content -->
                    </div><!-- end icon-box -->
                </div><!-- end col-lg-3 -->
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="info-icon">
                            <br>
                            <img src="/images/afriloc/inoubliables.png" alt="" width="100px" height="100px" class="img-fluid">
                        </div><!-- end info-icon-->
                        <div class="info-content">
                            <h4 class="info__title">Plus de moments inoubliables</h4>
                            <p class="info__desc">
                                De la réservation au séjour, vivez une expérience inoubliable.
                            </p>
                        </div><!-- end info-content -->
                    </div><!-- end icon-box -->
                </div><!-- end col-lg-3 -->
                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="info-icon">
                            <br>
                            <img src="/images/afriloc/intimite.png" alt="" width="100px" height="100px" class="img-fluid">
                        </div><!-- end info-icon-->
                        <div class="info-content">
                            <h4 class="info__title">Toute l’intimité d’une maison</h4>
                            <p class="info__desc">
                                Profitez de cuisines complètes, de piscines, de jardins et plus encore.
                            </p>
                        </div><!-- end info-content -->
                    </div><!-- end icon-box -->
                </div><!-- end col-lg-3 -->

                <div class="col-lg-3">
                    <div class="icon-box">
                        <div class="info-icon">
                            <br>
                            <img src="/images/afriloc/location.png" alt="" width="100px" height="100px" class="img-fluid">
                        </div><!-- end info-icon-->
                        <div class="info-content">
                            <h4 class="info__title">Toute l’intimité d’une maison</h4>
                            <p class="info__desc">
                                Profitez de cuisines complètes, de piscines, de jardins et plus encore.
                            </p>
                        </div><!-- end info-content -->
                    </div><!-- end icon-box -->
                </div><!-- end col-lg-3 -->

            </div>
        </div>
        @endif
        <!-- Home in New York -->
        @if(is_enable_service('home'))
        @php
        $list_services = \App\Controllers\Services\HomeController::get_inst()->listOfHomes([
        'number' => 4,
        'location' => [
        'lat' => '40.72939317669241',
        'lng' => '-73.99034249572969',
        'radius' => 50
        ]
        ]);
        @endphp
        @if(count($list_services['results']))
        <h2 class="h3 mt-4 ">{{__('Destinations les plus populaires ')}}</h2>
        <p>{{__("Besoin d'inspiration pour vos vacances au cameroun ? Retrouvez notre sélection des destinations les plus populaires et profitez d'un séjour tout confort en location de vacances. Vous cherchez une villa à Douala, un appartement à Douala ou à Yaoundé : vos vacances commencent ici et maintenant.")}}</p>
        <div class="hh-list-of-services">
            <div class="row">
                @foreach($list_services['results'] as $item)
                <div class="col-12 col-md-6 col-lg-3">
                    @include('frontend.home.loop.grid', ['item' => $item])
                </div>
                @endforeach
            </div>
        </div>
        @endif
        @endif
        <!-- Destination -->
        @php
        $locations = get_option('top_destination');
        @endphp
        @if(!empty($locations))
        <h2 class="h3 mt-4">{{__('Principales villes')}}</h2>
        <p>{{__('Parcourez de beaux endroits où séjourner avec tout le confort de la maison, et plus')}}</p>
        <div class="hh-list-destinations">
            @php
            $responsive = [
            0 => [
            'items' => 1
            ],
            768 => [
            'items' => 2
            ],
            992 => [
            'items' => 3
            ],
            ];
            @endphp
            <div class="hh-carousel carousel-padding nav-style2" data-responsive="{{ base64_encode(json_encode($responsive)) }}" data-margin="15" data-loop="0">
                <div class="owl-carousel">
                    @foreach($locations as $location)
                    <?php
                    $lat = $location['lat'];
                    $lng = $location['lng'];
                    $address = get_translate($location['name']);
                    if (isset($location['service']) && !empty($location['service'])) {
                        $services = explode(',', $location['service']);
                    } else {
                        $services = [];
                    }

                    $location_query = [
                        'lat' => $lat,
                        'lng' => $lng,
                        'address' => urlencode($address),
                    ];
                    $location_url = url('/');
                    if (count($services) == 0) {
                        $enable_services = get_enabled_services();
                        if (count($enable_services)) {
                            $location_url = get_search_page($enable_services[0]);
                        } else {
                            $location_url = '';
                        }
                    } elseif (count($services) == 1 && is_enable_service($services[0])) {
                        $location_url = get_search_page($services[0]);
                    } elseif (count($services) > 1) {
                        $enable_services = [];
                        foreach ($services as $service) {
                            if (is_enable_service($service)) {
                                $enable_services[] = $service;
                            }
                        }
                        if (count($enable_services)) {
                            $location_url = get_search_page($enable_services[0]);
                        } else {
                            $location_url = '';
                        }
                    }
                    if (!empty($location_url)) {
                        $location_url = add_query_arg($location_query, $location_url);
                    } else {
                        $location_url = 'javascript: void(0)';
                    }

                    $rand = rand(1, 6);
                    ?>
                    <div class="item">
                        <div class="hh-destination-item">
                            <a href="{{ $location_url }}">
                                <div class="thumbnail has-matchHeight">
                                    <div class="thumbnail-outer">
                                        <div class="thumbnail-inner">
                                            <img src="{{ get_attachment_url($location['image']) }}" alt="{{ get_attachment_alt($location['image'] ) }}" class="img-fluid">
                                        </div>
                                    </div>
                                    <div class="detail">
                                        <h2 class="text-center des-paterm-{{$rand}}">{{ $address }}</h2>
                                        @if(count($services) > 1)
                                        <div class="count-services d-flex align-items-center justify-content-center mt-3">
                                            <?php
                                            foreach ($services as $service) {
                                                if (!is_enable_service($service)) {
                                                    continue;
                                                }
                                                if ($service == 'home') {
                                                    $location_query['bookingType'] = 'per_night';
                                                }
                                                $location_url = get_search_page($service);
                                                $location_url = add_query_arg($location_query, $location_url);
                                                $radius = get_option($service . '_search_radius', 25);
                                                $controller = '\\App\\Controllers\\Services\\' . ucfirst($service) . 'Controller';
                                                $method = 'listOf' . ucfirst($service) . 's';
                                                $list_services = $controller::get_inst()->$method([
                                                    'location' => [
                                                        'lat' => $lat,
                                                        'lng' => $lng,
                                                        'radius' => $radius
                                                    ],
                                                ]);
                                                $service_info = post_type_info($service);
                                            ?>

                                                <div class="item item-{{$service}}">
                                                    <a href="{{$location_url}}">
                                                        <span class="count">{{$list_services['total']}}</span>
                                                        <span class="service">{{$service_info['names']}}</span>
                                                    </a>
                                                </div>
                                            <?php
                                            }
                                            ?>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="owl-nav">
                    <a href="javascript:void(0)" class="prev"><i class="ti-angle-left"></i></a>
                    <a href="javascript:void(0)" class="next"><i class="ti-angle-right"></i></a>
                </div>
            </div>
        </div>
        @endif
        <!-- Experience Types -->
        @php
        $experience_types = get_terms('experience-type', true);
        @endphp
        @if(count($experience_types) > 0)
        <h2 class="h3 mt-4">{{__('Find a Experience type')}}</h2>
        <div class="hh-list-terms mt-3">
            @if(count($experience_types))
            @php
            $responsive = [
            0 => [
            'items' => 1
            ],
            768 => [
            'items' => 2
            ],
            992 => [
            'items' => 3
            ],
            1200 => [
            'items' => 4
            ]
            ];
            @endphp
            <div class="hh-carousel carousel-padding nav-style2" data-responsive="{{ base64_encode(json_encode($responsive)) }}" data-margin="15" data-loop="0">
                <div class="owl-carousel">
                    @foreach($experience_types as $item)
                    @php
                    $url = get_attachment_url($item->term_image, [350, 300]);
                    @endphp
                    <div class="item">
                        <div class="hh-term-item">
                            <a href="{{ get_experience_search_page('?experience-type=' . $item->term_id) }}">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="thumbnail has-matchHeight">
                                            <div class="thumbnail-outer">
                                                <div class="thumbnail-inner">
                                                    <img src="{{ $url }}" alt="{{ get_attachment_alt($item->term_image ) }}" class="img-fluid">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 d-flex align-items-center">
                                        <div class="clearfix">
                                            <h4>{{ get_translate($item->term_title) }}</h4>
                                            @php
                                            $home_count = count_experience_in_experience_type($item->term_id);
                                            @endphp
                                            <p class="text-muted">{{ sprintf(__('%s Experiences'), $home_count) }}</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="owl-nav">
                    <a href="javascript:void(0)" class="prev"><i class="ti-angle-left"></i></a>
                    <a href="javascript:void(0)" class="next"><i class="ti-angle-right"></i></a>
                </div>
            </div>
            @endif
        </div>
        @endif
        <!-- Experience in Ha Noi -->
        @if(is_enable_service('experience'))
        @php
        $list_services = \App\Controllers\Services\ExperienceController::get_inst()->listOfExperiences([
        'number' => 4,
        'location' => [
        'lat' => '21',
        'lng' => '105.75',
        'radius' => 50
        ],
        'order' => 'rand'
        ]);
        @endphp
        @if(count($list_services['results']))
        <h2 class="h3 mt-4">{{__('Popular experiences in Ha Noi')}}</h2>
        <p>{{__('Book activities led by local hosts on your next trip')}}</p>
        <div class="hh-list-of-services">
            <div class="row">
                @foreach($list_services['results'] as $item)
                <?php $item = setup_post_data($item, 'experience'); ?>
                <div class="col-12 col-md-6">
                    @include('frontend.experience.loop.list', ['item' => $item])
                </div>
                @endforeach
            </div>
        </div>
        @endif
        @endif
    </div>

    <div class="container mt-4 mb-4">
        <div class="row pl-2 pr-2" >
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
        <div class="row pl-2 pr-2" >
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
        <!--Featured Car -->
        @if(is_enable_service('car'))
        @php
        $list_services = \App\Controllers\Services\CarController::get_inst()->listOfCars([
        'number' => 8,
        'is_featured' => 'on'
        ]);
        @endphp
        @if(count($list_services['results']))
        <h2 class="h3 mt-4">{{__('Featured Cars')}}</h2>
        <p>{{__('Book incredible things to do around the world.')}}</p>
        <div class="hh-list-of-services">
            @php
            $responsive = [
            0 => [
            'items' => 1
            ],
            768 => [
            'items' => 2
            ],
            992 => [
            'items' => 3
            ],
            1200 => [
            'items' => 4
            ],
            ];
            @endphp
            <div class="hh-carousel carousel-padding nav-style2" data-responsive="{{ base64_encode(json_encode($responsive)) }}" data-margin="15" data-loop="0">
                <div class="owl-carousel">
                    @foreach($list_services['results'] as $item)
                    <div class="item">
                        @include('frontend.car.loop.grid', [
                        'item' => $item
                        ])
                    </div>
                    @endforeach
                </div>
                <div class="owl-nav">
                    <a href="javascript:void(0)" class="prev"><i class="ti-angle-left"></i></a>
                    <a href="javascript:void(0)" class="next"><i class="ti-angle-right"></i></a>
                </div>
            </div>
        </div>
        @endif
        @endif
    </div>
    <!-- Testimonial -->
    @php
    $testimonials = get_option('testimonial', []);
    $responsive = [
    0 => [
    'items' => 1
    ],
    768 => [
    'items' => 2
    ],
    992 => [
    'items' => 2
    ],
    1200 => [
    'items' => 3
    ],
    ];

    $testimonial_bgr = get_option('testimonial_background', '#dd556a');
    @endphp
    @if(count($testimonials))
    <div class="section section-background pt-5 pb-5 mt-4" style="background-color: {{$testimonial_bgr}};">
        <div class="container">
            <h2 class="h3 mt-0 c-white">{{__('Say about Us')}}</h2>
            <p class="c-white">{{__('Browse beautiful places to stay with all the comforts of home, plus more')}}</p>
            <div class="hh-testimonials">
                <div class="hh-carousel carousel-padding nav-style2" data-responsive="{{ base64_encode(json_encode($responsive)) }}" data-margin="30" data-loop="0">
                    <div class="owl-carousel">
                        @foreach($testimonials as $testimonial)
                        <div class="item">
                            <div class="testimonial-item">
                                <div class="testimonial-inner">
                                    <div class="author-avatar">
                                        <img src="{{ get_attachment_url($testimonial['author_avatar'], [80, 80]) }}" alt="{{ $testimonial['author_name'] }}" class="img-fluid">
                                        <i class="mdi mdi-format-quote-open hh-icon"></i>
                                    </div>
                                    <div class="author-rate">
                                        @include('frontend.components.star', ['rate' => (int) $testimonial['author_rate']])
                                    </div>
                                    <div class="author-comment">
                                        {{ get_translate($testimonial['author_comment']) }}
                                    </div>
                                    <h2 class="author-name">
                                        {{ get_translate($testimonial['author_name']) }}
                                    </h2>
                                    @if($testimonial['date'])
                                    <div class="author-date">
                                        on {{ date(hh_date_format(), strtotime($testimonial['date'])) }}</div>
                                    @endif
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="owl-nav">
                        <a href="javascript:void(0)" class="prev"><i class="ti-angle-left"></i></a>
                        <a href="javascript:void(0)" class="next"><i class="ti-angle-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif
    <!-- List of Blog -->
    <div class="container">
        @php
        $list_services = \App\Controllers\PostController::get_inst()->listOfPosts([
        'number' => 2
        ]);
        $responsive = [
        0 => [
        'items' => 1
        ]
        ];
        @endphp
        @if(count($list_services['results']))
        <h2 class="h3 mt-4 mb-3">{{__('The latest from Blog')}}</h2>
        <div class="hh-list-of-blog">
            <div class="row">
                @foreach($list_services['results'] as $item)
                <div class="col-12 col-md-6">
                    <div class="hh-blog-item style-2">
                        <a href="{{ get_the_permalink($item->post_id, $item->post_slug, 'post') }}">
                            <div class="thumbnail">
                                <div class="thumbnail-outer">
                                    <div class="thumbnail-inner">
                                        <img src="{{ get_attachment_url($item->thumbnail_id, 'full') }}" alt="{{ get_attachment_alt($item->thumbnail_id ) }}" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                        </a>
                        <div class="category">{{__('Action')}}
                            <div class="date">{{ date(hh_date_format(), $item->created_at) }}</div>
                        </div>
                        <h2 class="title"><a href="{{ get_the_permalink($item->post_id, $item->post_slug, 'post') }}">{{ get_translate($item->post_title) }}</a>
                        </h2>
                        <div class="description">{!! balanceTags(short_content(get_translate($item->post_content), 55)) !!}</div>
                        <div class="w-100 mt-2"></div>
                        <div class="d-flex justify-content-between">
                            @php
                            $url = get_the_permalink($item->post_id, $item->post_slug, 'post');
                            $img = get_attachment_url($item->thumbnail_id);
                            $desc = get_translate($item->post_title);

                            $share = [
                            'facebook' => [
                            'url' => $url
                            ],
                            'twitter' => [
                            'url' => $url
                            ],
                            'pinterest' => [
                            'url' => $url,
                            'img' => $img,
                            'description' => $desc
                            ]
                            ];
                            @endphp
                            @include('frontend.components.share', ['share' => $share])
                            <a href="{{ get_the_permalink($item->post_id, $item->post_slug, 'post') }}" class="read-more">{{__('Keep Reading')}} {!! balanceTags(get_icon('002_right_arrow', '#F8546D', '12px', '')) !!}</a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        @endif
    </div>
</div>
@include('frontend.components.footer')
