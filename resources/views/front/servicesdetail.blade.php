@extends('front.layout.main')
@section('title')
{{ $serviceDetail->name }}
@endsection

@section('main.container')

    <section class="page-title" style="background-image: url(images/background/8.jpg);">
        <div class="auto-container">
            <div class="title-outer">
                <h1>{{$serviceDetail->name}}</h1>
                <ul class="page-breadcrumb">
                    <li><a href="{{route('home')}}">Home</a></li>
                    <li><a href="{{route('services')}}">Services</a></li>
                    <li>{{ $serviceDetail->name }}</li>
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
                            <figure class="image wow fadeIn"><a href="images/resource/service-single.jpg" class="lightbox-image" data-fancybox="services"><img src="images/resource/service-single.jpg" alt=""></a></figure>
                        </div>

                        <div class="content-box">
                            <div class="title-box">
                                <h2>{{ $serviceDetail->name}} </h2>
                            </div>
                            <div>
                                @if ($serviceDetail->description)
                                     {!! $serviceDetail->description !!}
                                @endif
                            </div>

                        </div>
                    </div>
                </div>

                <div class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12">
                    <aside class="sidebar services-sidebar">

                        <div class="sidebar-widget categories">
                            <div class="widget-content">
                                <ul class="services-categories">
                                    <li><a href="{{route('services')}}">All Services</a></li>
                                        @foreach ($service as $s)
                                            <li @if ($s->id == $serviceDetail->id) class="active" @endif><a href="{{ route('service_detail', ['slug' => $s->slug]) }}">{{ $s->name }}</a></li>
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


    {{-- <section class="services-section-two">
        <div class="auto-container">
            <div class="carousel-outer">
                <div class="services-carousel owl-carousel owl-theme default-dots">
                    {{-- <div class="service-block-two">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><a href="department-detail.html"><img src="images/resource/service-1.jpg" alt=""></a></figure>
                            </div>
                            <div class="lower-content">
                                <div class="title-box">
                                    <span class="icon flaticon-heart-2"></span>
                                    <h4><a href="department-detail.html">Cardiology Department</a></h4>
                                </div>
                                <div class="text">Introduction. Cardiology is the study heart conditions. The Consultant with whom you have an appointment is a specialist.</div>
                                <span class="icon-right flaticon-heart-2"></span>
                            </div>
                        </div>
                    </div> --}}
              {{--  </div>
            </div>
        </div>
    </section> --}}
    <!-- End service Section -->

@endsection
