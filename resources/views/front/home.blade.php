@extends('front.layout.main')
@section('title')
    {{__('Home')}}
@endsection

@section('main.container')


<section class="main-slider">
    <div class="rev_slider_wrapper fullwidthbanner-container"  id="rev_slider_one_wrapper" data-source="gallery">
        <div class="rev_slider fullwidthabanner" id="rev_slider_one" data-version="5.4.1">
            <ul>
                <li data-index="rs-1" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb=""  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">

                    <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="20" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="{{asset('adesign/images/home_1.jpg')}}">

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['750','750','750','650']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['-180','-170','-180','-180']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <span class="title">Welcome to our Medical Care Center </span>
                    </div>

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['750','750','750','650']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['-100','-95','-100','-115']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <h2>We take care our <br>patients health</h2>
                    </div>

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['700','750','700','450']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['0','0','0','0']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <div class="text">I realized that becoming a doctor, I can only help a small community. <br>But by becoming a doctor, I can help my whole country. </div>
                    </div>

                    <div class="tp-caption tp-resizeme"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-whitespace="normal"
                    data-width="['650','650','700','300']"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['80','90','90','140']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <div class="btn-box">
                            <a href="about-us.html" class="theme-btn btn-style-one"><span class="btn-title">About Us</span></a>
                            <a href="departments.html" class="theme-btn btn-style-two"><span class="btn-title">Our Services</span></a>
                        </div>
                    </div>
                </li>

                <li data-index="rs-2" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb=""  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">

                    <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="20" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="{{asset('adesign/images/home_2.jpg')}}">

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['750','750','750','650']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['-180','-170','-180','-180']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <span class="title">Welcome to our Medical Care Center </span>
                    </div>

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['750','750','750','650']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['-100','-95','-100','-115']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <h2>We take care our <br>patients health</h2>
                    </div>

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['700','750','700','450']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['0','0','0','0']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <div class="text">I realized that becoming a doctor, I can only help a small community. <br>But by becoming a doctor, I can help my whole country. </div>
                    </div>

                    <div class="tp-caption tp-resizeme"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-whitespace="normal"
                    data-width="['650','650','700','300']"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['80','90','90','140']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <div class="btn-box">
                            <a href="about-us.html" class="theme-btn btn-style-one"><span class="btn-title">About Us</span></a>
                            <a href="departments.html" class="theme-btn btn-style-two"><span class="btn-title">Our Services</span></a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>



<section class="top-features">
    <div class="auto-container">
        <div class="row">

            <div class="feature-block col-lg-4 col-md-6 col-sm-12">
                <div class="inner-box">
                    <span class="icon flaticon-charity"></span>
                    <h4><a href="#">Quality & Safety</a></h4>
                    <p>Our Delmont hospital utilizes state of the art technology and employs a team of true experts.</p>
                </div>
            </div>

            <div class="feature-block col-lg-4 col-md-6 col-sm-12">
                <div class="inner-box">
                    <span class="icon flaticon-lifeline"></span>
                    <h4><a href="#">Leading Technology</a></h4>
                    <p>Our Delmont hospital utilizes state of the art technology and employs a team of true experts.</p>
                </div>
            </div>

            <div class="feature-block col-lg-4 col-md-6 col-sm-12">
                <div class="inner-box">
                    <span class="icon flaticon-doctor"></span>
                    <h4><a href="#">Experts by Experience</a></h4>
                    <p>Our Delmont hospital utilizes state of the art technology and employs a team of true experts.</p>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- About Section -->
<section class="about-section">
    <div class="auto-container">
        <div class="row">
            <!-- Content Column -->
            <div class="content-column col-lg-6 col-md-12 col-sm-12 order-2">
                <div class="inner-column">
                    <div class="sec-title">
                        <span class="sub-title">OUR MEDICAL</span>
                        <h2>We're setting Standards in Research what's more, Clinical Care.</h2>
                        <span class="divider"></span>
                        <p>We provide the most full medical services, so every person could have the pportunity o receive qualitative medical help.</p>
                        <p> Our Clinic has grown to provide a world class facility for the treatment of tooth loss, dental cosmetics and bore advanced restorative dentistry. We are among the most qualified implant providers in the AUS with over 30 years of uality training and experience.</p>
                    </div>
                    <div class="link-box">
                        <figure class="signature"><img src="images/resource/signature.png" alt=""></figure>
                        <a href="#" class="theme-btn btn-style-one"><span class="btn-title">More About</span></a>
                    </div>
                </div>
            </div>

            <!-- Images Column -->
            <div class="images-column col-lg-6 col-md-12 col-sm-12">
                <div class="inner-column">
                    <div class="video-link">
                        <a href="https://www.youtube.com/watch?v=4UvS3k8D4rs" class="play-btn lightbox-image" data-fancybox="images"><span class="flaticon-play-button-1"></span></a>
                    </div>
                    <figure class="image-1"><img src="{{asset('upload/images/image-1.png')}}" alt=""></figure>
                    <figure class="image-2"><img src="{{asset('upload/images/image-2.png')}}" alt=""></figure>
                    <figure class="image-3">
                        <span class="hex"></span>
                        <img src="{{asset('upload/images/image-3.png')}}" alt="">
                    </figure>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End About Section -->


<section class="services-section">
    <div class="auto-container">
        <div class="sec-title text-center">
            <span class="sub-title">OUR SERVICES</span>
            <h2>We Care Our Patients.</h2>
            <span class="divider"></span>
        </div>

        <div class="row">

            @if (count($services)>0)
                @foreach ($services as $s)
                    <div class="service-block col-lg-4 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <span class="icon flaticon-heartbeat"></span>
                            {{-- <span class=""><img src="{{asset('upload/service').'/'.$s->icon}}" alt="{{ $s->name }}"></span> --}}
                            <h5><a href="#">{{ $s->name }}</a></h5>
                            <div class="text">{{ substr($s->description,0,75) }}</div>
                        </div>
                    </div>
                @endforeach
            @endif

        </div>
        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services <a href="{{route('services')}}">Explore all Services</a></div>
    </div>
</section>

<section class="services-section-two">
    <div class="auto-container">
        <div class="sec-title text-center">
            <span class="sub-title">Our Departments</span>
            <h2>Our Dedicated Departments</h2>
            <span class="divider"></span>
        </div>

        <div class="carousel-outer">
            <div class="row">
                @if (count($department)>0)
                    @foreach ($department->take(3) as $d)
                        @include('front.components.department')
                    @endforeach
                @endif
            </div>
        </div>
        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services <a href="{{route('departments')}}">Explore all Departments</a></div>
    </div>
</section>

<section class="team-section">
    <div class="auto-container">
        <div class="sec-title text-center">
            <span class="sub-title">Our Doctor</span>
            <h2>Our Dedicated Doctors Team</h2>
            <span class="divider"></span>
        </div>

        <div class="row">
            @foreach ($doctors as $d)
                <div class="team-block col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                    <div class="inner-box">
                        <?php
                            if($d->image){
                                $image=asset('upload/doctor')."/".$d->image;
                            }else{
                                $image=asset('upload/profile/profile.png');
                            }
                        ?>
                        <figure class="image"><a href="{{url('doctors/').'/'.$d->slug}}"><img src="{{ $image }}" alt="{{ $d->name }}"></a></figure>
                        <ul class="social-links">
                            <li><a href="{{isset($d->facebook_id)?$d->facebook_id:'https://www.facebook.com'}}"><span class="fab fa-facebook"></span></a></li>
                            <li><a href="{{isset($d->linkdin_id)?$d->linkdin_id:'https://www.linkdine.com/?hl=en'}}"><span class="fab fa-linkedin-in"></span></a></li>
                            <li><a href="{{isset($d->twitter_id)?$d->twitter_id:'https://twitter.com/search-home'}}"><span class="fab fa-twitter"></span></a></li>
                            <li><a href="{{isset($d->instagram_id)?$d->instagram_id:'https://www.instagram.com/?hl=en'}}"><span class="fab fa-instagram"></span></a></li>
                        </ul>
                        <div class="info-box">
                            <h4 class="name"><a href="{{url('doctors/').'/'.$d->slug}}">{{ $d->name }}</a></h4>
                            <span class="designation">Senior Dr. at Delmont</span>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services <a href="{{route('doctors')}}">Explore all Dr. Team</a></div>
    </div>
</section>


<section class="appointment-section">
    <div class="image-layer" style="background-image: url{{asset('upload/department/department.jpg')}};"></div>
    <div class="auto-container">
        {{-- <div class="row">
            <!-- Content Column -->
            {{-- <div class="content-column col-lg-6 col-md-12 col-sm-12">
                <div class="inner-column">
                    <span class="title">Need a Doctor for Check-up?</span>
                    <h2>Just Make an Appointment <br>and You’re Done!</h2>
                    <div class="number">Get Your Quote or Call: <strong>(0080) 123-453-789</strong></div>
                    <a href="#" class="theme-btn btn-style-three"><span class="btn-title">Get an Appointment</span></a>
                </div>
            </div> --}}
            {{-- <div class="image-column col-lg-6 col-md-12 col-sm-12">
                <figure class="image"><img src="images/resource/image-4.png" alt=""></figure>
            </div>
        </div> --}}

        <div class="fun-fact-section">
            <div class="row">

                <div class="counter-column col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                    <div class="count-box">
                        <div class="icon-box"><span class="icon flaticon-user-experience"></span></div>
                        <h4 class="counter-title">Years of Experience</h4>
                        <span class="count-text" data-speed="3000" data-stop="25">0</span>
                    </div>
                </div>

                <div class="counter-column col-lg-3 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay="400ms">
                    <div class="count-box">
                        <div class="icon-box"><span class="icon flaticon-team"></span></div>
                        <h4 class="counter-title">Medical Spesialities</h4>
                        <span class="count-text" data-speed="3000" data-stop="470">0</span>
                    </div>
                </div>

                <div class="counter-column col-lg-3 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay="800ms">
                    <div class="count-box">
                        <div class="icon-box"><span class="icon flaticon-hospital"></span></div>
                        <h4 class="counter-title">Medical Spesialities</h4>
                        <span class="count-text" data-speed="3000" data-stop="689">0</span>
                    </div>
                </div>

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
</section>


{{-- <section class="testimonial-section">
    <div class="auto-container">

        <div class="sec-title text-center">
            <span class="title">HAPPY Patient</span>
            <h2>What Says Our Patients</h2>
            <span class="divider"></span>
        </div>

        <div class="testimonial-outer">
            <div class="client-testimonial-carousel owl-carousel owl-theme">
                @foreach ($review as $r)
                    <div class="testimonial-block">
                        <div class="inner-box">
                            <div class="text">{{$r->review}}</div>
                        </div>
                    </div>
                @endforeach

            </div>

            <div class="client-thumb-outer">

                <div class="client-thumbs-carousel owl-carousel owl-theme">
                    @foreach ($review as $r)
                        <div class="thumb-item">
                            <figure class="thumb-box"><img src="{{asset('resource/testi-thumb-1.jpg')}}" alt=""></figure>
                            <div class="author-info">
                                <span class="icon fa fa-quote-left"></span>
                                <div class="author-name">{{$r->users->name}}</div>
                                <div class="designation">Restaurant Owner</div>
                            </div>
                        </div>
                    @endforeach

                </div>

            </div>

        </div>
    </div>
</section> --}}



{{-- <section class="pricing-section">
    <div class="auto-container">
        <div class="sec-title text-center">
            <span class="sub-title">Our Pricing</span>
            <h2>Pricing Plan</h2>
            <span class="divider"></span>
        </div>

        <div class="outer-box">
            <div class="row">

                <div class="pricing-block col-lg-3 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="price-box">
                            <h4 class="price">$299</h4>
                            <div class="validaty">Per Month</div>
                        </div>
                        <h3 class="title">Cardiology</h3>
                        <ul class="features">
                            <li>Functional Diagnotics</li>
                            <li>Allergens Drugs</li>
                            <li>Pollen Allergens</li>
                            <li>Food Allergens</li>
                        </ul>
                        <div class="btn-box">
                            <a href="#" class="theme-btn">Get Offer</a>
                        </div>
                    </div>
                </div>

                <div class="pricing-block col-lg-3 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="price-box">
                            <h4 class="price">$120</h4>
                            <div class="validaty">Per Month</div>
                        </div>
                        <h3 class="title">Detal Care</h3>
                        <ul class="features">
                            <li>Tooth implantation</li>
                            <li>Lase Dentistry</li>
                            <li>Tests and Treatment</li>
                            <li>Medical Consultation</li>
                        </ul>
                        <div class="btn-box">
                            <a href="#" class="theme-btn">Get Offer</a>
                        </div>
                    </div>
                </div>

                <div class="pricing-block col-lg-3 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="price-box">
                            <h4 class="price">$150</h4>
                            <div class="validaty">Per Month</div>
                        </div>
                        <h3 class="title">Body Checkup</h3>
                        <ul class="features">
                            <li>Tests and Treatment</li>
                            <li>Tests and Treatment</li>
                            <li>Laboratory Services</li>
                            <li>Food Allergens</li>
                        </ul>
                        <div class="btn-box">
                            <a href="#" class="theme-btn">Get Offer</a>
                        </div>
                    </div>
                </div>

                <div class="pricing-block col-lg-3 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="price-box">
                            <h4 class="price">$100</h4>
                            <div class="validaty">Per Month</div>
                        </div>
                        <h3 class="title">Blood Test</h3>
                        <ul class="features">
                            <li>Blood Test Service</li>
                            <li>Safety Training Tips</li>
                            <li>Tests and Treatment</li>
                            <li>Food Allergens</li>
                        </ul>
                        <div class="btn-box">
                            <a href="#" class="theme-btn">Get Offer</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services <a href="{{route('doctors')}}">Explore all Dr. Team</a></div>
    </div>
</section> --}}


<section class="news-section">
    <div class="auto-container">

        <div class="sec-title text-center">
            <span class="title">OUR BLOG</span>
            <h2>Recent Articles and News</h2>
            <span class="divider"></span>
        </div>

        <div class="row">
            @if (count($news)>0)
                @foreach ($news as $n)
                    <div class="news-block col-lg-4 col-md-6 col-sm-12 wow fadeInUp">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><a href="blog-post-image.html"><img width="350" height="192" style="height: 177.7px" src="{{asset('upload/news')."/".$n->featured_image}}" alt="{{ $n->title }}"></a></figure>
                                <a href="#" class="date">{{ \Carbon\Carbon::parse($n->created_at)->format('j F, Y') }}</a>
                            </div>
                            <div class="lower-content">
                                <h4><a href="blog-post-image.html">{{ $n->title }}</a></h4>
                                <div class="text">{{ substr($n->contents,0,75) }}</div>
                                <div class="post-info">
                                    <div class="post-author">By Admin Rose</div>
                                    <ul class="post-option">
                                        <li><a href="#">0 <i class="far fa-heart"></i></a></li>
                                        <li><a href="#">0 <i class="far fa-comments"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</section>

@endsection
