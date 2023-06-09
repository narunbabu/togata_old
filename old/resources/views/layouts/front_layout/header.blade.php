<header>
    <!-- header inner -->
    <div class="header">

        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-3 logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo">
                                <a href="{{url('/')}}"><img src="{{asset('images/front_images/img/emblem_63.png')}}" alt="#"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="right_header_info">
                        <ul>
                            @if(Auth::check())
                            <li>
                              {{Auth::user()->name}} 
                            </li>
                            <li class="tytyu">
                                <a href="{{url('/')}}"><img style="margin-right: 15px;" src="{{asset('icon/2.png')}}" alt="#" /></a>
                            </li>
                            <li>
                                <a href="{{url('/')}}"><img style="margin-right: 15px;" src="{{asset('icon/3.png')}}" alt="#" /></a>
                            </li>
                            <li>
                                <a href="{{url('/logout')}}" style="color: rgb(240, 15, 15)">Log Out</a>
                            </li>
                            @else
                            <li>
                                <a href="{{url('/login')}}"><img style="margin-right: 15px;" src="{{asset('icon/1.png')}}" alt="#" /></a>
                            </li>
                            @endif

                            <li>
                                <button type="button" id="sidebarCollapse">
                                    <img src="{{asset('images/front_images/img/menu_icon.png')}}" alt="#" />
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- end header inner -->
</header>