@extends('front.layout.main')
@section('title')
 {{__('messages.Doctor List')}}
@endsection

@section('main.container')

<section class="page-title" style="background-image: url(images/background/8.jpg);">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Dedicated Doctors</h1>
            <ul class="page-breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>Doctors</li>
            </ul>
        </div>
    </div>
</section>
 <section class="team-section-two alternate alternate2">
    <div class="auto-container">
        <div class="row">
            @foreach ($doctor as $d)
                <div class="team-block-two col-lg-4 col-md-6 col-sm-12 wow fadeInUp">
                    <div class="inner-box">
                       <div class="image-box">
                            <?php
                                if($d->image){
                                    $image=asset('upload/doctor')."/".$d->image;
                                }else{
                                    $image=asset('upload/profile/profile.png');
                                }
                            ?>
                            <figure class="image"><a href="{{url('doctordetails/').'/'.$d->user_id}}"><img src="{{ $image }}" alt=""></a></figure>
                            <ul class="social-links">
                                <li><a href="{{isset($d->facebook_id)?$d->facebook_id:'https://www.facebook.com'}}"><span class="fab fa-facebook-f"></span></a></li>
                                <li><a href="{{isset($d->twitter_id)?$d->twitter_id:'https://twitter.com/search-home'}}"><span class="fab fa-twitter"></span></a></li>
                                <li><a href="{{isset($d->instagram_id)?$d->instagram_id:'https://www.instagram.com/?hl=en'}}"><span class="fab fa-instagram"></span></a></li>
                                <li><a href="{{isset($d->linkdin_id)?$d->linkdin_id:'https://www.linkdine.com/?hl=en'}}"><span class="fab fa-linkedin-in"></span></a></li>
                            </ul>
                        </div>
                        <div class="info-box">
                            <h5 class="name"><a href="{{url('doctordetails/').'/'.$d->user_id}}">{{ $d->name }}</a></h5>
                            <span class="">{{ $d->about_us }}</span>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services. <a href="#">Explore all Dr. Team</a></div>
    </div>
</section>


<section class="testimonial-section-two">
    <div class="auto-container">
        <!-- Sec Title -->
        <div class="sec-title text-center">
            <span class="title">HAPPY Patient</span>
            <h2>What Says Our Patients</h2>
            <span class="divider"></span>
        </div>

        <div class="testimonial-outer">
            <!-- Product Thumbs Carousel -->
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

            <!-- Client Testimonial Carousel -->
            <div class="client-testimonial-carousel default-dots owl-carousel owl-theme">

                <!--Testimonial Block -->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>

                <!--Testimonial Block -->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>

                <!--Testimonial Block -->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>

                <!--Testimonial Block -->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>

                <!--Testimonial Block -->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <div class="text">Medical Centre is a great place to get all of your medical needs. I came in for a check up and did not wait more than 5 minutes before I was seen. I can only imagine the type of service you get for more serious issues. Thanks!</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Call To Action -->
        <div class="call-to-action">
            <div class="inner-container">
                <div class="content-column">
                    <h4>We Employ The Latest Technology</h4>
                    <h2>We Ensure Safe Dental Sergery </h2>
                    <a href="#" class="theme-btn btn-style-three"><span class="btn-title">Take Appointment</span></a>
                </div>

                <div class="video-column">
                    <div class="btn-box">
                        <a href="https://www.youtube.com/watch?v=Fvae8nxzVz4" class="play-now" data-fancybox="gallery" data-caption=""><i class="icon flaticon-play-button" aria-hidden="true"></i><span class="ripple"></span></a>
                        <span class="title">Watch now</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="time-table-section">
    <div class="auto-container">
        <div class="table-outer">
            <!-- Doctors Time Table -->
            <table class="doctors-time-table">
                <thead>
                    <tr>
                        <th class="dark">Time Table</th>
                        <th>Monday</th>
                        <th>Tuesday</th>
                        <th>Wednesday</th>
                        <th>Thrusday</th>
                        <th>Friday</th>
                        <th>Saturday</th>
                        <th>Sunday</th>
                    </tr>
                </thead>

                <tbody>
                    <!-- Table Row 08:00am -->
                    <tr>
                        <th>08:00am</th>
                        <td>
                            <strong>Dental Care</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Orthopaedics</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Medicine</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Orthopaedics</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                    </tr>

                    <!-- Table Row 10:00am -->
                    <tr>
                        <th>10:00am</th>
                        <td class="empty"></td>
                        <td>
                            <strong>Gynecology</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Cardiology</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Dental Care</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                    </tr>

                    <!-- Table Row 11:00am -->
                    <tr>
                        <th>11:00am</th>
                        <td>
                            <strong>Dental Care</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Orthopaedics</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Medicine</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Orthopaedics</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                    </tr>

                    <!-- Table Row 11:30am -->
                    <tr>
                        <th>11:30am</th>
                        <td class="empty"></td>
                        <td>
                            <strong>Gynecology</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Cardiology</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Dental Care</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                    </tr>

                    <!-- Table Row 12:00am -->
                    <tr>
                        <th>12:00am</th>
                        <td>
                            <strong>Dental Care</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Orthopaedics</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Medicine</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Orthopaedics</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                    </tr>

                    <!-- Table Row 01:00pm -->
                    <tr>
                        <th>01:00pm</th>
                        <td class="empty"></td>
                        <td>
                            <strong>Gynecology</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Cardiology</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Dental Care</strong>
                            <p> 9:00 am - 10:00 am <br> Room: 301</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                    </tr>

                    <!-- Table Row 02:00pm -->
                    <tr>
                        <th>02:00pm</th>
                        <td>
                            <strong>Dental Care</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Orthopaedics</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Medicine</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                        <td class="empty"></td>
                        <td>
                            <strong>Orthopaedics</strong>
                            <p> 8:00 am - 9:00 am <br> Room: 303</p>
                            <div class="doctor-info">
                                <figure class="thumb"><img src="images/resource/doctor-thumb.jpg" alt=""></figure>
                                <h4 class="name">Dr. Tania Riham</h4>
                                <a href="#" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>

<section class="clients-section alternate">
    <div class="auto-container">

        <!-- Sponsors Outer -->
        <div class="sponsors-outer">
            <!--clients carousel-->
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

