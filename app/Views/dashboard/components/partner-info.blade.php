<div class="partner-item">
    <div class="item row align-items-center">
        <div class="col-4">
            <h5 class="title">{{__('Idenfiant')}}</h5>
        </div>
        <div class="col-8">
            <span>{{ $user->getUserId() }}</span>
        </div>
    </div>
</div>
<div class="partner-item">
    <div class="item row align-items-center">
        <div class="col-4">
            <h5 class="title">{{__('Le genre')}}</h5>
        </div>
        <div class="col-8">
            <span>{{ get_gender_name(get_user_meta($user->getUserId(), 'gender')) }}</span>
        </div>
    </div>
</div>
<div class="partner-item">
    <div class="item row align-items-center">
        <div class="col-4">
            <h5 class="title">{{__('Nom complet')}}</h5>
        </div>
        <div class="col-8">
            <span>{{ $user->first_name }} {{ $user->last_name }}</span>
        </div>
    </div>
</div>
<div class="partner-item">
    <div class="item row align-items-center">
        <div class="col-4">
            <h5 class="title">{{__('Télèphone')}}</h5>
        </div>
        <div class="col-8">
            <span>{{ $user->mobile }}</span>
        </div>
    </div>
</div>
<div class="partner-item">
    <div class="item row align-items-center">
        <div class="col-4">
            <h5 class="title">{{__('Adresse')}}</h5>
        </div>
        <div class="col-8">
            <span>{{ $user->address }}</span>
        </div>
    </div>
</div>
<div class="partner-item">
    <div class="item row align-items-center">
        <div class="col-4">
            <h5 class="title">{{__('Pays')}}</h5>
        </div>
        <div class="col-8">
            <span>{{ get_country_by_code($user->location)['name'] }}</span>
        </div>
    </div>
</div>
<div class="partner-item">
    <div class="item row align-items-center">
        <div class="col-4">
            <h5 class="title">{{__('ZipCode')}}</h5>
        </div>
        <div class="col-8">
            <span>{{ get_user_meta($user->getUserId(), 'Code postal') }}</span>
        </div>
    </div>
</div>
