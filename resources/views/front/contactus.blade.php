@extends('front.layout.main')
@section('title')
 {{__('Contact Us')}}
@endsection

@section('main.container')

<section class="page-title" style="background-image: url(images/background/8.jpg);">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Contact Us</h1>
            <ul class="page-breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>Contact</li>
            </ul>
        </div>
    </div>
</section>
{{-- <!-- Map Section -->
<section class="map-section">
    <div class="auto-container">
        <div class="map-outer">
            <div class="map-canvas"
                data-zoom="12"
                data-lat="-37.817085"
                data-lng="144.955631"
                data-type="roadmap"
                data-hue="#ffc400"
                data-title="Envato"
                data-icon-path="images/icons/map-marker.png"
                data-content="Melbourne VIC 3000, Australia<br><a href='mailto:info@youremail.com'>info@youremail.com</a>">
            </div>
        </div>
    </div>
</section>
<!-- End Map Section --> --}}

<section class="contact-section" id="contact">
    <div class="small-container">
        <div class="sec-title text-center">
            <span class="sub-title">Contact Now</span>
            <h2>Write us a Message !</h2>
            <span class="divider"></span>
        </div>

        <div class="contact-box">
            <div class="row">
                <div class="contact-info-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner">
                        <span class="icon flaticon-worldwide"></span>
                        <h4><strong>Address</strong></h4>
                        <p>{{$setting->address}}</p>
                    </div>
                </div>

                <div class="contact-info-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner">
                        <span class="icon flaticon-phone"></span>
                        <h4><strong>Phone</strong></h4>
                        <p><a href="#">{{$setting->phone_no}}</a></p>
                    </div>
                </div>

                <div class="contact-info-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner">
                        <span class="icon flaticon-email"></span>
                        <h4><strong>Email</strong></h4>
                        <p><a href="mailto:support@example.com">{{$setting->email}}</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="part-form-main-box">
            @if(Session::get("message"))
                <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
                    {{Session::get("message")}}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
            @endif
        <div class="form-box">
            <div class="contact-form">
                <form action="{{url('savecontact')}}" method="post" id="email-form">
                    @csrf
                    <div class="row">
                        <div class="form-group col-lg-12">
                            <div class="response"></div>
                        </div>

                        <div class="col-lg-6 col-md-12">
                            <div class="form-group">
                                <input type="text" name="name" class="username" placeholder="Full Name *">
                            </div>

                            <div class="form-group">
                                <input type="email" name="email" class="email" placeholder="Email Address *">
                            </div>

                            <div class="form-group">
                                <input type="text" name="topic" class="username" placeholder="Topic">
                            </div>

                            <div class="form-group">
                                <input type="text" name="phone" class="username" placeholder="Your Phone">
                            </div>
                        </div>

                        <div class="col-lg-6 col-md-12">
                            <div class="form-group">
                                <textarea name="message" class="message" placeholder="Massage"></textarea>
                            </div>

                        </div>

                        <div class="form-group col-lg-12 text-center pt-3">
                            <button class="theme-btn btn-style-one" type="submit" id="submit" name="submit-form"><span class="btn-title">Send Message</span></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>


<section class="clients-section alternate">
    <div class="auto-container">

        <div class="sponsors-outer">
            <ul class="clients-carousel owl-carousel owl-theme">
                <li class="slide-item"> <a href="#"><img src="images/clients/1.png" alt=""></a> </li>
                <li class="slide-item"> <a href="#"><img src="images/clients/2.png" alt=""></a> </li>
                <li class="slide-item"> <a href="#"><img src="images/clients/3.png" alt=""></a> </li>
                <li class="slide-item"> <a href="#"><img src="images/clients/4.png" alt=""></a> </li>
                <li class="slide-item"> <a href="#"><img src="images/clients/5.png" alt=""></a> </li>
            </ul>
        </div>
    </div>
</section>
@endsection
