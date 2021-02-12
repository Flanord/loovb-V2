<h2 class="h3">{{ __('Réservez votre maison ') }}</h2>
<form action="{{ get_home_search_page() }}" class="form mt-3" method="get">
    <div class="form-group">
        <label>{{__('Où')}}</label>

        <div class="form-control" data-plugin="mapbox-geocoder" data-value=""
             data-current-location="1"
             data-your-location="{{__('Votre ville')}}"
             data-placeholder="{{__("Entrez le nom d'un ville")}}" data-lang="{{get_current_language()}}"></div>
            <div class="map d-none"></div>
            <input type="hidden" name="lat" value="">
            <input type="hidden" name="lng" value="">
            <input type="hidden" name="address" value="">
       </div>

    <div class="form-group">
        <div class="radio radio-pink form-check-inline ml-1">
            <input id="booking_type_home_night" type="radio" name="bookingType" value="per_night"
                   checked>
            <label for="booking_type_home_night">{{ __('Par nuit') }}</label>
        </div>
        <div class="radio radio-pink form-check-inline ml-1">
            <input id="booking_type_home_hour" type="radio" name="bookingType" value="per_hour">
            <label for="booking_type_home_hour">{{ __('Par heure') }}</label>
        </div>
    </div>

    <div class="form-group form-group-date-single d-none">
        <label>{{__('Date début')}}</label>
        <div class="date-wrapper date date-single"
             data-date-format="{{ hh_date_format_moment() }}">
            <input type="text"
                   class="input-hidden check-in-out-field"
                   name="checkInOutTime">
            <input type="text" class="input-hidden check-in-field"
                   name="checkInTime">
            <input type="text" class="input-hidden check-out-field"
                   name="checkOutTime">
            <span class="check-in-render"
                  data-date-format="{{ hh_date_format_moment() }}"></span>
        </div>
    </div>
    <div class="form-group form-group-date-time d-none">
        <label>{{ __('Heure') }}</label>
        @php
        $listTime = list_hours(30);
        @endphp
        <div class="date-wrapper date-time">
            <div class="date-render check-in-render"
                 data-time-format="{{ hh_time_format() }}">
                <div class="render">{{__('Heure de début')}}</div>
                <div class="dropdown-time">
                    @foreach($listTime as $key => $value)
                    <div class="item" data-value="{{ $key }}">{{ $value }}</div>
                    @endforeach
                </div>
                <input type="hidden" name="startTime" value=""
                       class="input-checkin"/>
            </div>
            <span class="divider"></span>
            <div class="date-render check-out-render"
                 data-time-format="{{ hh_time_format() }}">
                <div class="render">{{__('Heure de fin')}}</div>
                <div class="dropdown-time">
                    @foreach($listTime as $key => $value)
                    <div class="item" data-value="{{ $key }}">{{ $value }}</div>
                    @endforeach
                </div>
                <input type="hidden" name="endTime" value=""
                       class="input-checkin"/>
            </div>
        </div>
    </div>
    <div class="form-group form-group-date">
        <label>{{__('Enregistrement / départ')}}</label>
        <div class="date-wrapper date date-double" data-date-format="{{ hh_date_format_moment()  }}">
            <input type="text" class="input-hidden check-in-out-field" name="checkInOut">
            <input type="text" class="input-hidden check-in-field" name="checkIn">
            <input type="text" class="input-hidden check-out-field" name="checkOut">
            <span class="check-in-render"
                  data-date-format="{{ hh_date_format_moment()  }}"></span>
            <span class="divider"></span>
            <span class="check-out-render"
                  data-date-format="{{ hh_date_format_moment()  }}"></span>
        </div>
    </div>
    <div class="form-group">
        <label>{{__('Invités')}}</label>
        <div class="guest-group">
            <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown"
                    data-text-guest="{{__('Invité')}}"
                    data-text-guests="{{__('Invités')}}"
                    data-text-infant="{{__('Enfant')}}"
                    data-text-infants="{{__('Enfants')}}"
                    aria-haspopup="true" aria-expanded="false">
                &nbsp;
            </button>
            <div class="dropdown-menu dropdown-menu-right">
                <div class="group">
                    <span class="pull-left">{{__('Adultes')}}</span>
                    <div class="control-item">
                        <i class="decrease ti-minus"></i>
                        <input type="number" min="1" step="1" max="15" name="num_adults" value="1">
                        <i class="increase ti-plus"></i>
                    </div>
                </div>
                <div class="group">
                    <span class="pull-left">{{__('Enfants')}}</span>
                    <div class="control-item">
                        <i class="decrease ti-minus"></i>
                        <input type="number" min="0" step="1" max="15" name="num_children"
                               value="0">
                        <i class="increase ti-plus"></i>
                    </div>
                </div>
                <div class="group">
                    <span class="pull-left">{{__('Bébés')}}</span>
                    <div class="control-item">
                        <i class="decrease ti-minus"></i>
                        <input type="number" min="0" step="1" max="10" name="num_infants" value="0">
                        <i class="increase ti-plus"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php
    $minmax = \App\Controllers\Services\HomeController::get_inst()->getMinMaxPrice();
    $currencySymbol = current_currency('symbol');
	$currencyPos = current_currency('position');
    ?>
    <div class="form-group">
        <label>{{__('Échelle des prix')}}</label>
        <input type="text" name="price_filter"
               data-plugin="ion-range-slider"
               data-prefix="{{ $currencyPos == 'left' ? $currencySymbol : ''}}"
               data-postfix="{{ $currencyPos == 'right' ? $currencySymbol : ''}}"
               data-min="{{ $minmax['min'] }}"
               data-max="{{ $minmax['max'] }}"
               data-from="{{ $minmax['min'] }}"
               data-to="{{ $minmax['max'] }}"
               data-skin="round">
    </div>
    <div class="form-group">
        <input class="btn btn-primary w-100" type="submit" name="sm"
               value="{{__('Chercher')}}">
    </div>
</form>
