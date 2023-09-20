@extends('front.layout.main')
@section('title')
{{ $doctor->name }}
@endsection
@section('main.container')

 <section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
    <div class="auto-container">
        <div class="title-outer">
            <h1>{{ $doctor->name }}</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li><a href="{{route('doctors')}}">Doctors</a></li>
                <li><a href="#">{{ $doctor->name }}</a></li>
            </ul>
        </div>
    </div>
</section>
 <!-- Doctor Detail Section -->
 <section class="doctor-detail-section">
    <div class="auto-container">
        <div class="row">

            <div class="content-side col-lg-8 col-md-12 col-sm-12 order-2">
                <div class="docter-detail">
                    <h3 class="name">{{ $doctor->name }}</h3>
                    {{-- <span class="designation">MBBS (Sydney), FRACS (Paediatric Surgery)</span> --}}
                    <div class="text">{{ $doctor->about_us }}</div>
                    <ul class="doctor-info-list">
                        <li>
                            <strong>Speciality</strong>
                            <p>{{isset($doctor->department)?$doctor->department->name:""}}</p>
                        </li>
                        {{-- <li>
                            <strong>Education</strong>
                            <p>Doctor of Medicine, University of Texas, USA (1990) Medical Orientation Program, St. Louis University (St. Louis, Missouri 1996)</p>
                        </li> --}}
                        <li>
                            <strong>Services</strong>
                            <p>{{ $doctor->service }}</p>
                        </li>
                        {{-- <li>
                            <strong>Address</strong>
                            <p>Suite 27, Medical Centre, The Sunshine Coast Private Hospital, QLD 4556</p>
                        </li> --}}
                        <li>
                            <strong>Timing</strong>
                            <p>{{ $doctor->working_hour }}</p>
                        </li>
                        <li>
                            <strong>Phone</strong>
                            <p><a href="#">{{ $doctor->phone_no }}</a></p>
                        </li>
                        <li>
                            <strong>Email</strong>
                            <p><a href="#">{{ $doctor->email }}</a></p>
                        </li>
                        {{-- <li>
                            <strong>Website</strong>
                            <p><a href="#">www.yourdomain.com</a></p>
                        </li> --}}
                    </ul>
                </div>
            </div>

            <!-- Sidebar Side -->
            <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                <div class="sidebar">
                    <div class="team-block wow fadeInUp">
                        <div class="inner-box">
                            <?php if ($doctor->image) {
                                $image = asset('upload/doctor') . "/" . $doctor->image;
                                } else {
                                $image = asset('upload/profile/profile.png');
                                }
                            ?>
                            <figure class="image"><img src="{{ $image }}" alt="{{ $doctor->name }}"></figure>
                            <ul class="social-links">
                                <li><a href="#"><span class="fab fa-facebook"></span></a></li>
                                <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                <li><a href="#"><span class="fab fa-pinterest"></span></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="docter-availability">
                        <div class="inner">
                            <div class="sec-title">
                                <h2>Availability</h2>
                                <span class="divider"></span>
                                <div class="text">Suspendisse potenti. Maecenas dapibus ac tellus sed pulvinar. Vestibulum bib volutpat accumsan non laoreet nulla luctus.</div>
                            </div>
                            <ul class="timing-list-two">
                                <?php $arr = [__('messages.Monday'), __('messages.Tuesday'), __('messages.Wednesday'), __('messages.Thursday'), __('messages.Friday'), __('messages.Saturday'), __('messages.Sunday')]; ?>
                                @php
                                    $weekdays = [];
                                    $weekend = [];
                                    $isWeekdaysSame = true;
                                    $weekdaysTimetable = "";

                                    foreach ($arr as $index => $day) {
                                        if (isset($doctor->TimeTabledata[$index])) {
                                            $timetable = $doctor->TimeTabledata[$index];
                                            $formattedTime = date_format(date_create($timetable->from), "H:i") . ' - ' . date_format(date_create($timetable->to), "H:i");

                                            if ($index < 5) {
                                                $weekdays[] = "$day $formattedTime";
                                                if ($index > 0 && $weekdaysTimetable !== $formattedTime) {
                                                    $isWeekdaysSame = false;
                                                }
                                                $weekdaysTimetable = $formattedTime;
                                            } else {
                                                $weekend[] = "$day $formattedTime";
                                            }
                                        }
                                    }
                                @endphp

                                @if (count($weekdays) === 0)
                                    <p>{{ __('No working hours available for weekdays') }}</p>
                                @else
                                    @if ($isWeekdaysSame)
                                            <li>{{ __('Monday - Friday') }}
                                            <?php
                                                if (!empty($weekdays) && is_array($weekdays) && count($weekdays) > 0) {
                                                    $firstWeekday = $weekdays[0];

                                                    if (preg_match('/\d{2}:\d{2}\s*-\s*\d{2}:\d{2}/', $firstWeekday, $matches)) {
                                                        $timeRange = $matches[0];
                                                    }
                                                }
                                            ?>
                                             <span>{{ $timeRange }}</span></li>
                                    @else
                                        @foreach ($weekdays as $dayTimetable)
                                                <p>{{ $dayTimetable }}</p>
                                        @endforeach
                                    @endif
                                @endif

                                @if (count($weekend) > 0)
                                    @foreach ($weekend as $dayTimetable)
                                        @php
                                            $parts = explode(' ', $dayTimetable);
                                            $weekend_name = $parts[0];
                                            $timerange = $parts[1] .  ' - ' . $parts[3];
                                        @endphp
                                            <li>{{$weekend_name}} <span>{{ $timerange }}</span></li>
                                    @endforeach
                                @endif

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="team-section">
    <div class="auto-container">
        <div class="row">
            @foreach ($doctor_list as $d_list)
                <div class="team-block col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                    <div class="inner-box">
                        <?php
                            if($d_list->image){
                                $image=asset('upload/doctor')."/".$d_list->image;
                            }else{
                                $image=asset('upload/profile/profile.png');
                            }
                        ?>
                            <figure class="image"><a href="{{url('doctors/').'/'.$d_list->slug}}"><img src="{{ $image }}" alt="{{ $d_list->name }}"></a></figure>
                            <ul class="social-links">
                                @if (!empty($d_list->facebook_id))
                                    <li><a href="{{ $d_list->facebook_id }}"><span class="fab fa-facebook"></span></a></li>
                                @endif
                                @if (!empty($d_list->google_id))
                                    <li><a href="{{ $d_list->google_id }}"><span class="fab fa-google-plus-g"></span></a></li>
                                @endif
                                @if (!empty($d_list->twitter_id))
                                    <li><a href="{{ $d_list->twitter_id }}"><span class="fab fa-twitter"></span></a></li>
                                @endif
                                @if (!empty($d_list->instagram_id))
                                    <li><a href="{{ $d_list->instagram_id }}"><span class="fab fa-instagram"></span></a></li>
                                @endif
                            </ul>
                        <div class="info-box">
                            <h4 class="name"><a href="{{url('doctors/').'/'.$d_list->slug}}">{{ $d_list->name }}</a></h4>
                            <span class="designation">Senior Dr. at Delmont</span>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>


@endsection



