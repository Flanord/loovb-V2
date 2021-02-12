
<h1 class="h3 info__desc">{{ __('Louez les voitures de particuliers') }}</h1>
<form action="{{ get_car_search_page() }}" class="form mt-3" method="get">
    <div class="form-group">
        <label>{{__('Debut')}}</label>
        <select class="form-control option-w3ls" name="pays" id="pays" required="">
            <option value="">Choisir un pays</option>
                <option value="Gabon">Gabon</option>
                 <option value="Sénégal">Sénégal</option>
        </select>
    </div>
    <div class="form-group">
        <label>{{__('Fin')}}</label>

        <select class="form-control option-w3ls" name="ville" id="ville" required="">
            <option value="">Choisir une ville</option>
            <option value="libreville">libreville</option>
            <option value="Dakar">Dakar</option>
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
