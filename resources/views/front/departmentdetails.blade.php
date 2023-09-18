@extends('front.layout.main')
@section('title')
{{ $departmentdetails->name }}
@endsection
@section('main.container')




<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
<div class="auto-container">
    <div class="title-outer">
        <h1>{{ $departmentdetails->name }}</h1>
        <ul class="page-breadcrumb">
            <li><a href="{{route('home')}}">Home</a></li>
            <li><a href="{{route('departments')}}">Departments</a></li>
            <li><a href="#">{{ $departmentdetails->name }}</a></li>
        </ul>
    </div>
</div>
</section>

<div class="sidebar-page-container">
<div class="auto-container">
    <div class="row clearfix">

        <div class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12 order-2">
            <div class="service-detail">
                <div class="images-box">
                    <figure class="image wow fadeIn"><a src="#" class="lightbox-image" data-fancybox="services"><img src="{{asset('upload/department').'/'.$departmentdetails->image}}"  alt="{{ $departmentdetails->name }}"></a></figure>
                </div>

                <div class="content-box">
                    <div class="title-box">
                        <h2>{{ $departmentdetails->name }}</h2>
                    </div>
                    <p>{{$departmentdetails->description}}</p>
                    <div>
                        <div class="row">
                            <div class="image-column col-xl-6 col-lg-12 col-md-12">
                                <figure class="image"><a href="#"class="lightbox-image"><img src="{{asset('upload/images/post-img.jpg')}}" alt=""></a></figure>
                            </div>
                            <div class="text-column col-xl-6 col-lg-12 col-md-12">
                                <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness.</p>
                                <ul class="list-style-one">
                                    <li>Enhancing Your Vision sit ametcon sec tetur</li>
                                    <li>adipisicing eiusmod tempor tread depth sit tread</li>
                                    <li>eiusmod Your Vision sit ametcon sec tetur sec</li>
                                    <li>adipisicing eiusmod tempor tread depth sit </li>
                                    <li>tread Your Vision sit ametcon sec tetur</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="product-info-tabs">
                        <div class="prod-tabs tabs-box">
                            <ul class="tab-btns tab-buttons clearfix">
                                <li data-tab="#prod-details" class="tab-btn active-btn">Precautions</li>
                                <li data-tab="#prod-spec" class="tab-btn">Intelligence</li>
                                <li data-tab="#prod-reviews" class="tab-btn">Specializations</li>
                            </ul>

                            <div class="tabs-content">

                                <div class="tab active-tab" id="prod-details">
                                    <div class="content">
                                        <p>Suspendisse laoreet at nulla id auctor. Maecenas in dui cursus, lacinia nisl non, blandit lorem. Aliquam vel risus hendrerit, faucibus nisl a, porta sapien. Etiam iaculis mattis quam, nec iaculis velit feugiat quis. Pellentesque sed feugiat dui, ac euismod leo.</p>
                                    </div>
                                </div>

                                <div class="tab" id="prod-spec">
                                    <div class="content">
                                        <p>Suspendisse laoreet at nulla id auctor. Maecenas in dui cursus, lacinia nisl non, blandit lorem. Aliquam vel risus hendrerit, faucibus nisl a, porta sapien. Etiam iaculis mattis quam, nec iaculis velit feugiat quis. Pellentesque sed feugiat dui, ac euismod leo.</p>
                                    </div>
                                </div>

                                <div class="tab" id="prod-reviews">
                                    <div class="content">
                                        <p>Suspendisse laoreet at nulla id auctor. Maecenas in dui cursus, lacinia nisl non, blandit lorem. Aliquam vel risus hendrerit, faucibus nisl a, porta sapien. Etiam iaculis mattis quam, nec iaculis velit feugiat quis. Pellentesque sed feugiat dui, ac euismod leo.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12">
            <aside class="sidebar services-sidebar">
                <div class="sidebar-widget categories">
                    <div class="widget-content">
                        <ul class="services-categories">
                            <li><a href="{{route('departments')}}">All Departments</a></li>
                            @foreach ($department as $d)
                                <li @if ($d->id == $departmentdetails->id) class="active" @endif><a href="{{url('departments').'/'.$d->slug}}">{{ $d->name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="brochures-box">
                    <div class="inner">
                        <h4>Download Brochures</h4>
                        <div class="text">Etiam tortor lorem, auctor ut orci ut, vehicula ultricies mauris. scelerisque gravida.</div>
                        <a class="theme-btn btn-style-one" href="#"><span class="btn-title"><i class="fa fa-file-pdf"></i> Info Company</span></a>
                        <a class="theme-btn btn-style-one" href="#"><span class="btn-title"><i class="fa fa-file-pdf"></i> Brochure Newest</span></a>
                    </div>
                </div>

                <div class="help-box">
                    <span>Quick Contact</span>
                    <h4>Get Solution</h4>
                    <p>Contact us at the Medicoz office nearest to you or submit a business inquiry online.</p>
                    <a href="{{route('contact_us')}}" class="theme-btn btn-style-one"><span class="btn-title">Contact</span></a>
                </div>
            </aside>
        </div>
    </div>
</div>
</div>

<section class="services-section-two">
    <div class="auto-container">
        <div class="carousel-outer">
            <div class="services-carousel owl-carousel owl-theme default-dots">
                @foreach ($department as $d)
                    <div class="service-block-two">
                        <div class="inner-box">
                            <a href="{{url('departments').'/'.$d->slug}}">
                                <div class="image-box">
                                    <figure class="image"><img style="height: 265.13px;" src="{{asset('upload/department').'/'.$d->image}}" alt="{{ $d->name }}"></figure>
                                </div>
                                <div class="lower-content">
                                    <div class="title-box">
                                        <span class="icon flaticon-heart-2"></span>
                                        <h4>{{ $d->name }}</a></h4>
                                    </div>
                                    <a href="{{url('departments').'/'.$d->slug}}">
                                        <div class="text">{{substr($d->description,0,75)}}</div>
                                    </a>
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection
