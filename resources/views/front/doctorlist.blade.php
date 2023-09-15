@extends('front.layout.main')
@section('title')
 {{__('Doctors')}}
@endsection

@section('main.container')

<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Doctors</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li><a href="{{route('doctors')}}">Doctors</a></li>
            </ul>
        </div>
    </div>
</section>


<section class="team-section-two alternate alternate2">
    <div class="auto-container">
        <div class="row">
            @if (count($doctor)>0)
                @foreach ($doctor as $d)
                    @include('front.components.doctor')
                @endforeach
            @endif
        </div>
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
            <div class="client-thumb-outer">
                <div class="client-thumbs-carousel owl-carousel owl-theme">
                    @if (count($reviews)>0)
                        @foreach ($reviews as $r)
                            <div class="thumb-item">
                                <figure class="thumb-box"><img src="{{asset('images/resource/testi-thumb-1.jpg')}}"" alt=""></figure>
                                <div class="author-info">
                                    <span class="icon fa fa-quote-left"></span>
                                    <div class="author-name">{{$r->users->name}}</div>
                                    <div class="designation">Restaurant Owner</div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>

            <div class="client-testimonial-carousel default-dots owl-carousel owl-theme">
                @if (count($reviews)>0)
                    @foreach ($reviews as $r)
                        <div class="testimonial-block">
                            <div class="inner-box">
                                <div class="text">{{ $r->review }}</div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>

        <!-- Call To Action -->
        <div class="call-to-action">
            <div class="inner-container">
                <div class="content-column">
                    <h4>We Employ The Latest Technology</h4>
                    <h2>We Ensure Safe Dental Sergery </h2>
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

@endsection

