<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>@yield('title')</title>


<link href="{{asset('assets/css/bootstrap.css')}}" rel="stylesheet">
<link href="{{asset('assets/plugins/revolution/css/settings.css')}}" rel="stylesheet" type="text/css"><!-- REVOLUTION SETTINGS STYLES -->
<link href="{{asset('assets/plugins/revolution/css/layers.css')}}" rel="stylesheet" type="text/css"><!-- REVOLUTION LAYERS STYLES -->
<link href="{{asset('plugins/revolution/css/navigation.css')}}" rel="stylesheet" type="text/css"><!-- REVOLUTION NAVIGATION STYLES -->
<link href="{{asset('assets/css/style.css')}}" rel="stylesheet">
<link href="{{asset('assets/css/responsive.css')}}" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link id="theme-color-file" href="{{asset('assets/css/color-themes/default-theme.css')}}" rel="stylesheet">

<link rel="shortcut icon" href="{{asset('assets/images/favicon.png')}}" type="image/x-icon">
<link rel="icon" href="{{asset('images/favicon.png')}}" type="image/x-icon">


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>

<div class="page-wrapper">


    <header class="main-header header-style-one">


        <div class="header-top">
            <div class="auto-container">
                <div class="inner-container">
                    <div class="top-left">
                        <ul class="contact-list clearfix">
                            <li><i class="flaticon-hospital-1"></i>{{$setting->address}}</li>
                            <li><i class="flaticon-back-in-time"></i>{{$setting->working_day}}</li>
                        </ul>
                    </div>
                    <div class="top-right">
                        <ul class="social-icon-one">
                            <li><a href="{{ $setting->facebook_id }}"><span class="fab fa-facebook-f"></span></a></li>
                            <li><a href="{{ $setting->twitter_id }}"><span class="fab fa-twitter"></span></a></li>
                            <li><a href="{{ $setting->instagram_id}}"><span class="fab fa-instagram"></span></a></li>
                            <li><a href="{{ $setting->google_id}}"><span class="fab fa-google"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>



        <div class="header-lower">
            <div class="auto-container">

                <div class="main-box">
                    <div class="logo-box">
                        <div class="logo"><a href="{{route('home')}}"><img src="{{asset('assets/images/logo.png')}}" alt="" title=""></a></div>
                    </div>
                    @php $segment1 =  request()->segment(1);  @endphp
                    <div class="nav-outer">
                        <nav class="nav main-menu" style="margin-right: 3.5rem">
                            <ul class="navigation" id="navbar">
                                <li class="@if($segment1=='') current @endif dropdown">
                                    <a href="{{route('home')}}">
                                        <span>Home</span>
                                    </a>
                                </li>

                                <li class="dropdown @if($segment1=='doctors') current @endif ">
                                    <a href="{{route('doctors')}}">
                                        <span>Doctors</span>
                                    </a>
                                </li>

                                <li class="dropdown @if($segment1=='services') current @endif">
                                    <a href="{{route('services')}}">
                                        <span>Services</span>
                                    </a>
                                    {{-- <ul>
                                        <li><a href="about-us.html">About Us</a></li>
                                    </ul> --}}
                                </li>
                                <li class="dropdown @if($segment1=='departments') current @endif">
                                    <a href="{{route('departments')}}">
                                        <span>Departments</span>
                                    </a>
                                    <ul>
                                        @foreach ($department as $d)
                                            <li><a href="{{ url('departments').'/'.$d->slug }}">{{ $d->name }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>

                                <li class="dropdown @if($segment1=='news') current @endif">
                                    <a href="{{route('news')}}">
                                        <span>News</span>
                                    </a>
                                    {{-- <ul>
                                        <li><a href="blog-checkboard.html">Checkerboard</a></li>
                                        <li><a href="blog-masonry.html">Masonry</a></li>
                                        <li><a href="blog-two-col.html">Two Columns</a></li>
                                        <li><a href="blog-three-col.html">Three Colums</a></li>
                                        <li><a href="blog-four-col-wide.html">Four Colums</a></li>
                                        <li class="dropdown">
                                            <span>Post Types</span>
                                            <ul>
                                                <li><a href="blog-post-image.html">Image Post</a></li>
                                                <li><a href="blog-post-gallery.html">Gallery Post</a></li>
                                                <li><a href="blog-post-link.html">Link Post</a></li>
                                                <li><a href="blog-post-audio.html">Audio Post</a></li>
                                                <li><a href="blog-post-quote.html">Quote Post</a></li>
                                                <li><a href="blog-post-video.html">Video Post</a></li>
                                            </ul>
                                        </li>
                                    </ul> --}}
                                </li>
                                <li class="dropdown @if($segment1=='events') current @endif">
                                    <a href="{{route('events')}}">
                                        <span>Events</span>
                                    </a>
                                </li>
                                <li class="@if($segment1=='contact-us') current @endif"><a href="{{route('contact_us')}}">Contact</a></li>
                            </ul>
                        </nav>

                        {{-- <div class="outer-box">
                            <button class="search-btn"><span class="fa fa-search"></span></button>
                             <a href="appointment.html" id="appointment-btn" class="theme-btn btn-style-one"><span class="btn-title">Privacy Policy</span></a>
                        </div> --}}
                    </div>
                </div>
            </div>
        </div>


        <div class="sticky-header">
            <div class="auto-container">

                <div class="main-box">
                    <div class="logo-box">
                        <div class="logo"><a href="index.html"><img src="{{asset('assets/images/logo.png')}}" alt="" title=""></a></div>
                    </div>


                </div>
            </div>
        </div>


        <div class="mobile-header">
            <div class="logo"><a href="index.html"><img src="{{asset('assets/images/logo.png')}}" alt="" title=""></a></div>


            <div class="nav-outer clearfix">

                <div class="outer-box">

                    {{-- <div class="search-box">
                        <button class="search-btn mobile-search-btn"><i class="flaticon-magnifying-glass"></i></button>
                    </div> --}}

                    <a href="#nav-mobile" class="mobile-nav-toggler navbar-trigger"><span class="fa fa-bars"></span></a>
                </div>
            </div>
        </div>


        <div id="nav-mobile"></div>


        <div class="search-popup">
            <span class="search-back-drop"></span>
            <button class="close-search"><span class="fa fa-times"></span></button>

            <div class="search-inner">
                <form method="post" action="blog-showcase.html">
                    <div class="form-group">
                        <input type="search" name="search-field" value="" placeholder="Search..." required="">
                        <button type="submit"><i class="flaticon-magnifying-glass"></i></button>
                    </div>
                </form>
            </div>
        </div>

    </header>


