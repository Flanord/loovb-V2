@php
    enqueue_style('daterangepicker-css');
    enqueue_script('daterangepicker-js');
    enqueue_script('daterangepicker-lang-js');

    enqueue_script('switchery-js');
    enqueue_style('switchery-css');

    enqueue_style('iconrange-slider');
    enqueue_script('iconrange-slider');
    $booking_type = get_car_booking_type();
@endphp
<div class="hh-search-bar-wrapper">
    <div class="hh-search-bar-buttons">
        @php
            $lat = request()->get('lat');
            $lng = request()->get('lng');
            $address = request()->get('address');
        @endphp
        <div class="hh-button-item button-location form-group">
                    <select class="form-control option-w3ls" name="pays" id="pays" required="">
                        <option value="">Choisir un pays</option>
                            <option value="Gabon">Gabon</option>
                            <option value="Sénégal">Sénégal</option>
                    </select>
        </div>

        <div class="hh-button-item button-location form-group">
            <select class="form-control option-w3ls" name="pays" id="pays" required="">
                <option value="">Choisir une </option>
                    <option value="Gabon">Gabon</option>
                     <option value="Sénégal">Sénégal</option>
            </select>
         </div>

        @php
            $checkIn = request()->get('checkIn', date('Y-m-d'));
            $checkOut = request()->get('checkOut', date('Y-m-d'));
            $checkInOut = request()->get('checkInOut');

            $startTime = request()->get('checkInTime','12:00 AM');
            $endTime = request()->get('checkOutTime','11:45 PM');
        @endphp
        <div class="hh-button-item button-date button-date-double button-same-date form-group"
             data-date-format="{{ hh_date_format_moment() }}"
             data-single-click="false"
             data-same-date="true">
            <span class="text"><?php echo __('Date'); ?></span>
            <input type="hidden" class="check-in-field" name="checkIn" value="{{ $checkIn }}">
            <input type="hidden" class="check-out-field" name="checkOut" value="{{ $checkOut }}">
            <input type="text" class="input-hidden check-in-out-field" name="checkInOut"
                   value="{{ $checkInOut }}">
        </div>

        @if($booking_type == 'hour')
        @php
            enqueue_script('flatpickr-js');
            enqueue_style('flatpickr-css');
        @endphp
        <div class="dropdown dropdown-button dropdown-button-time">
            <div class="hh-button-item button-time form-group"
                 data-toggle="dropdown"
                 aria-haspopup="true"
                 role="article"
                 aria-expanded="false"
                 data-minute-increment="15">
                <span class="text start">{{$startTime}}</span>
                {!! get_icon('002_right_arrow', '', '15px') !!}
                <span class="text end">{{$endTime}}</span>
                <div class="dropdown-menu">
                    <div class="date-wrapper date-time">
                        <div class="date-render check-in-render"
                             data-time-format="{{ hh_time_format() }}">
                            <div class="render">{{__('Start Time')}}</div>
                            <input type="hidden" name="checkInTime" value="{{ $startTime }}"
                                   class="input-checkin input-hidden flatpickr"/>
                        </div>
                        <span class="divider"></span>
                        <div class="date-render check-out-render"
                             data-time-format="{{ hh_time_format() }}">
                            <div class="render">{{__('End Time')}}</div>
                            <input type="hidden" name="checkOutTime" value="{{$endTime}}"
                                   class="input-checkout input-hidden flatpickr"/>
                        </div>
                    </div>
                    <a href="javascript:void(0)"
                       class="apply-time-filter btn btn-primary btn-xs right">{{__('Appliquer')}}</a>
                </div>
            </div>
        </div>
        @endif
        @php
            $minmax = get_car_min_max_price();
            $currencySymbol = current_currency( 'symbol' );
            $priceFilter = request()->get( 'price_filter' );
            $priceFilter = explode( ';', $priceFilter );
            if ( ! isset( $priceFilter[1] ) || $priceFilter[1] == 0 ) {
                $priceFilter[1] = $minmax['max'];
            }
        $currencyPos = current_currency('position');
        @endphp
        <div class="dropdown dropdown-button dropdown-button-price">
            <div class="hh-button-item button-price form-group" data-toggle="dropdown" aria-haspopup="true"
                 role="article"
                 aria-expanded="false">
                <span class="text">{{__('Price')}}</span>
                <div class="dropdown-menu">
                    <input type="text" id="price-filter" name="price_filter" data-plugin="ion-range-slider"
                           data-prefix="{{ $currencyPos == 'left' ? $currencySymbol : ''}}"
                           data-postfix="{{ $currencyPos == 'right' ? $currencySymbol : ''}}"
                           data-min="{{ $minmax['min'] }}"
                           data-max="{{ $minmax['max'] }}"
                           data-from="{{ $priceFilter[0] }}"
                           data-to="{{ $priceFilter[1] }}"
                           data-skin="round">
                </div>
            </div>
        </div>
        <div class="dropdown dropdown-button dropdown-button-more-filter">
            <div class="hh-button-item button-more-filter form-group" data-toggle="dropdown" aria-haspopup="false"
                 role="article"
                 aria-expanded="true">
                <span class="text"><?php echo __('Plus de critères'); ?></span>
                <div class="dropdown-menu">
                    @php
                        $terms = get_car_terms_filter();
                    @endphp
                    @if (!empty($terms))
                        @foreach ($terms as $term_name => $term)
                            @php
                                $tax = request()->get($term_name);
                                $tax_arr = [];
                                if (!empty($tax)) {
                                    $tax_arr = explode(',', $tax);
                                }
                            @endphp
                            <div class="item-filter-wrapper" data-type="{{ $term_name }}">
                                <div class="label">{{ $term['label'] }}</div>
                                @if (!empty($term['items']))
                                    <div class="content">
                                        <div class="row">
                                            @foreach ($term['items'] as $term_id => $term_title)
                                                @php
                                                    $checked = '';
                                                    if (in_array($term_id, $tax_arr)) {
                                                        $checked = 'checked';
                                                    }
                                                @endphp
                                                <div class="col-lg-4 mb-1">
                                                    <div class="item checkbox  checkbox-success ">
                                                        <input type="checkbox" value="{{ $term_id }}"
                                                               id="{{$term_name}}{{ $term_id }}" {{ $checked }}/>
                                                        <label
                                                            for="{{ $term_name }}{{ $term_id }}">{{ get_translate($term_title) }}</label>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                @endif
                                <input type="hidden" name="{{ $term_name }}" value="{{ $tax }}"/>
                            </div>
                        @endforeach
                    @endif
                    <a href="javascript:void(0)"
                       class="apply-more-filter btn btn-primary btn-xs right">{{__('valider')}}</a>
                </div>
            </div>
        </div>
        <div class="hh-button-item show-filter form-group" id="show-filter-mobile">
            <span class="text">{{__('Filtres')}}</span>
        </div>
        
    </div>

    <div class="hh-search-bar-toggle"></div>
    <div id="filter-mobile-box" class="filter-mobile-box">
        <div class="render-box">
            <div class="popup-filter-header">
                <span>{{__('Filtres')}}</span>
                <div
                    class="popup-filter-close">{!! balanceTags(get_icon('001_close', '#575757', '28px', '28px')) !!}</div>
            </div>
            <div class="popup-filter-content">
                {{--Location--}}
                <div class="filter-item">
                    <p class="filter-item-title">{{__('Pays')}}</p>
                   <div class="hh-button-item button-location form-group">
                    <select class="form-control option-w3ls" name="pays" id="pays" required="">
                        <option value="">Choisir un pays</option>
                            <option value="Gabon">Gabon</option>
                             <option value="Sénégal">Sénégal</option>
                    </select>
                   </div>
                </div>

                <div class="filter-item">
                    <p class="filter-item-title">{{__('Ville')}}</p>
                   <div class="hh-button-item button-location form-group">
                    <select class="form-control option-w3ls" name="pays" id="pays" required="">
                        <option value="">Choisir une ville</option>
                            <option value="Libreville">Libreville</option>
                             <option value="Dakar">Dakar</option>
                    </select>
                   </div>
                </div>

                <div class="filter-item">
                    <p class="filter-item-title">{{__('Date')}}</p>
                    <div class="hh-button-item button-date button-date-single form-group"
                         data-date-format="{{ hh_date_format_moment() }}">
                        <span class="text"><?php echo __('Date'); ?></span>
                        <input type="hidden" class="check-in-field" name="checkIn" value="{{ $checkIn }}">
                        <input type="hidden" class="check-out-field" name="checkOut" value="{{ $checkOut }}">
                        <input type="text" class="io-date check-in-out-field" name="checkInOut"
                               value="{{ $checkInOut }}">
                    </div>
                </div>
                @if($booking_type == 'hour')
                <div class="filter-item">
                    <p class="filter-item-title">{{__('Time')}}</p>
                    @php
                        $listTime = list_hours(15);
                    @endphp
                    <div class="date-wrapper date-time">
                        <div class="date-render check-in-render"
                             data-time-format="{{ hh_time_format() }}"
                             data-same-time="true">
                            <div class="render">{{$startTime}}</div>
                            <div class="dropdown-time">
                                @foreach($listTime as $key => $value)
                                    <div class="item @if($key == $startTime) active @endif" data-value="{{ $key }}">{{ $value }}</div>
                                @endforeach
                            </div>
                            <input type="hidden" name="checkInTime" value="{{ $startTime }}"
                                   class="input-checkin"/>
                        </div>
                        <span class="divider">{!! get_icon('002_right_arrow', '', '15px') !!}</span>
                        <div class="date-render check-out-render"
                             data-time-format="{{ hh_time_format() }}">
                            <div class="render">{{$endTime}}</div>
                            <div class="dropdown-time">
                                @foreach($listTime as $key => $value)
                                    <div class="item @if($key == $endTime) active @endif" data-value="{{ $key }}">{{ $value }}</div>
                                @endforeach
                            </div>
                            <input type="hidden" name="checkOutTime" value="{{ $endTime }}"
                                   class="input-checkin"/>
                        </div>
                    </div>
                </div>
                @endif

                {{--Price--}}
                <div class="filter-item">
                    <p class="filter-item-title">{{__('Price')}}</p>
                    <input type="text" id="price-filter-popup" name="price_filter" data-plugin="ion-range-slider"
                           data-prefix="{{ $currencyPos == 'left' ? $currencySymbol : ''}}"
                           data-postfix="{{ $currencyPos == 'right' ? $currencySymbol : ''}}"
                           data-min="{{ $minmax['min'] }}"
                           data-max="{{ $minmax['max'] }}"
                           data-from="{{ $priceFilter[0] }}"
                           data-to="{{ $priceFilter[1] }}"
                           data-skin="round">
                </div>

                {{--Taxonomy--}}
                @if (!empty($terms))
                    @foreach ($terms as $term_name => $term)
                        @php
                            $tax = request()->get($term_name);
                            $tax_arr = [];
                            if (!empty($tax)) {
                                $tax_arr = explode(',', $tax);
                            }
                        @endphp
                        <div class="filter-item item-filter-wrapper popup-tax-filter" data-type="{{ $term_name }}">
                            <p class="filter-item-title">{{ $term['label'] }}</p>
                            @if (!empty($term['items']))
                                <div class="content">
                                    <div class="row">
                                        @foreach ($term['items'] as $term_id => $term_title)
                                            @php
                                                $checked = '';
                                                if (in_array($term_id, $tax_arr)) {
                                                    $checked = 'checked';
                                                }
                                            @endphp
                                            <div class="col-sm-4 mb-1">
                                                <div class="item checkbox  checkbox-success ">
                                                    <input type="checkbox" value="{{ $term_id }}"
                                                           id="popup-{{$term_name}}{{ $term_id }}" {{ $checked }}/>
                                                    <label
                                                        for="popup-{{ $term_name }}{{ $term_id }}">{{ get_translate($term_title) }}</label>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            @endif
                            <input type="hidden" name="{{ $term_name }}" value="{{ $tax }}"/>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="popup-filter-footer">
            <div class="view-result">{{__('Afficher le résultat du filtre')}}</div>
        </div>
    </div>
</div>
