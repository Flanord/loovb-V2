<!-- ========== Left Sidebar Start ========== -->
<div class="left-side-menu">
    <div class="slimscroll-menu">
        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <ul class="metismenu" id="side-menu">
                <li class="menu-title">Général</li>
                <li><a href="{{ route('dashboard') }}" class="{{ Request::is('dashboard') ? 'active' : '' }}"><i class="hh-icon  fa"></i><span>Tableau de bord</span></a> </li>
                <li class="menu-title">tous les services</li>
                <li class=""><a class="" aria-expanded="" href="javascript: void(0);"><i class="hh-icon  fa"></i><span>Voitures</span>
                        <span class="menu-arrow"></span></a>
                    <ul class="nav-second-level collapse" aria-expanded="false">
                        <li class=""><a href="{{ route('add-new-car') }}" class=""><span> Ajouter une  voiture</span></a></li>
                        <li class=""><a href="{{ route('my-car') }}" class=""><span> my-car </span></a></li>
                        <li class=""><a href="{{ route('car-type') }}" class=""><span> car-type </span></a></li>
                        <li class=""><a href="{{ route('car-equipment') }}" class=""><span> Équipements </span></a></li>
                        <li class=""><a href="{{ route('car-feature') }}" class=""><span> Caractéristiques </span></a></li>
                        <li class=""><a href="{{ route('review-car') }}" class=""><span> Commentaires </span></a></li>
                    </ul>
                </li>
            </ul>

        </div>
        <!-- End Sidebar -->
        <div class="clearfix"></div>
    </div>
    <!-- Sidebar -left -->
</div>
<!-- Left Sidebar End -->
