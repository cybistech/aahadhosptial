@extends('front.layout.main')
{{-- @section('title')
 {{__('Services')}}
@endsection --}}

@section('main.container')

<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Services</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li>Services</li>
            </ul>
        </div>
    </div>
</section>


<section class="services-section">
    <div class="auto-container">
        <div class="row">
            @if (count($service)>0)
                @foreach ($service as $s)
                  @include('front.components.services')
                @endforeach
            @endif
        </div>
    </div>
</section>

{{-- <section class="appointment-section alternate">
    <div class="image-layer" style="background-image: url(images/background/2.jpg);"></div>
    <div class="auto-container">
        <div class="row">

            <div class="content-column col-lg-6 col-md-12 col-sm-12">
                <div class="inner-column">
                    <span class="title">Need a Doctor for Check-up?</span>
                    <h2>Just Make an Appointment <br>and You’re Done!</h2>
                    <div class="number">Get Your Quote or Call: <strong>(0080) 123-453-789</strong></div>
                    <a href="#" class="theme-btn btn-style-three"><span class="btn-title">Get an Appointment</span></a>
                </div>
            </div>
            <div class="image-column col-lg-6 col-md-12 col-sm-12">
                <figure class="image"><img src="images/resource/image-4.png" alt=""></figure>
            </div>
        </div>

        <div class="fun-fact-section">
            <div class="row">
                <!--Column-->
                <div class="counter-column col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                    <div class="count-box">
                        <div class="icon-box"><span class="icon flaticon-user-experience"></span></div>
                        <h4 class="counter-title">Years of Experience</h4>
                        <span class="count-text" data-speed="3000" data-stop="25">0</span>
                    </div>
                </div>

                <!--Column-->
                <div class="counter-column col-lg-3 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay="400ms">
                    <div class="count-box">
                        <div class="icon-box"><span class="icon flaticon-team"></span></div>
                        <h4 class="counter-title">Medical Spesialities</h4>
                        <span class="count-text" data-speed="3000" data-stop="470">0</span>
                    </div>
                </div>

                <!--Column-->
                <div class="counter-column col-lg-3 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay="800ms">
                    <div class="count-box">
                        <div class="icon-box"><span class="icon flaticon-hospital"></span></div>
                        <h4 class="counter-title">Medical Spesialities</h4>
                        <span class="count-text" data-speed="3000" data-stop="689">0</span>
                    </div>
                </div>

                <!--Column-->
                <div class="counter-column col-lg-3 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay="1200ms">
                    <div class="count-box">
                        <div class="icon-box"><span class="icon flaticon-add-friend"></span></div>
                        <h4 class="counter-title">Happy Patients</h4>
                        <span class="count-text" data-speed="3000" data-stop="9036">0</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> --}}

{{-- <section class="testimonial-section">
    <div class="auto-container">

        <div class="sec-title text-center">
            <span class="title">HAPPY Patient</span>
            <h2>What Says Our Patients</h2>
            <span class="divider"></span>
        </div>

        <div class="testimonial-outer">

            <div class="client-testimonial-carousel owl-carousel owl-theme">


                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>

                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>

                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>

                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>

                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>
            </div>

            <div class="client-thumb-outer">
                <div class="client-thumbs-carousel owl-carousel owl-theme">
                    <div class="thumb-item">
                        <figure class="thumb-box"><img src="images/resource/testi-thumb-1.jpg" alt=""></figure>
                        <div class="author-info">
                            <span class="icon fa fa-quote-left"></span>
                            <div class="author-name">Lara Croft</div>
                            <div class="designation">Restaurant Owner</div>
                        </div>
                    </div>
                    <div class="thumb-item">
                        <figure class="thumb-box"><img src="images/resource/testi-thumb-2.jpg" alt=""></figure>
                        <div class="author-info">
                            <span class="icon fa fa-quote-left"></span>
                            <div class="author-name">Lara Croft</div>
                            <div class="designation">Restaurant Owner</div>
                        </div>
                    </div>
                    <div class="thumb-item">
                        <figure class="thumb-box"><img src="images/resource/testi-thumb-3.jpg" alt=""></figure>
                        <div class="author-info">
                            <span class="icon fa fa-quote-left"></span>
                            <div class="author-name">Lara Croft</div>
                            <div class="designation">Restaurant Owner</div>
                        </div>
                    </div>
                    <div class="thumb-item">
                        <figure class="thumb-box"><img src="images/resource/testi-thumb-2.jpg" alt=""></figure>
                        <div class="author-info">
                            <span class="icon fa fa-quote-left"></span>
                            <div class="author-name">Lara Croft</div>
                            <div class="designation">Restaurant Owner</div>
                        </div>
                    </div>
                    <div class="thumb-item">
                        <figure class="thumb-box"><img src="images/resource/testi-thumb-3.jpg" alt=""></figure>
                        <div class="author-info">
                            <span class="icon fa fa-quote-left"></span>
                            <div class="author-name">Lara Croft</div>
                            <div class="designation">Restaurant Owner</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> --}}

@endsection
