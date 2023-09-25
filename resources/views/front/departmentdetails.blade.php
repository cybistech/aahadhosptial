@extends('front.layout.main')
{{-- @section('title')
{{ $departmentdetails->name }}
@endsection --}}
@section('main.container')




<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
<div class="auto-container">
    <div class="title-outer">
        <h1>{{ $departmentdetails->name }}</h1>
        <ul class="page-breadcrumb">
            <li><a href="{{route('home')}}">Home</a></li>
            <li><a href="{{route('departments')}}">Departments</a></li>
            <li>{{ $departmentdetails->name }}</li>
        </ul>
    </div>
</div>
</section>
        @php
            $setting=setting();
            $department=department();
            $news=news();
        @endphp

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

                    <div>
                        @if ($departmentdetails->description)
                            {!! $departmentdetails->description !!}
                        @endif
                    </div>

                    <div class="product-info-tabs">
                        <div class="prod-tabs tabs-box">
                            <ul class="tab-btns tab-buttons clearfix">
                                @foreach($departmentdetails->service->take(4) as $item)
                                    <li data-tab="#{{ Str::slug($item->name) }}" class="tab-btn @if($loop->first) active-btn @endif">{{ $item->name }}</li>
                                @endforeach
                            </ul>

                            <div class="tabs-content">
                                @foreach($departmentdetails->service->take(4) as $item)
                                    <div class="tab @if($loop->first) active-tab @endif" id="{{ Str::slug($item->name) }}">
                                        <div class="content">
                                            <p>{!! $item->description !!}</p>
                                        </div>
                                    </div>
                                @endforeach
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
                @foreach ($department->take(10) as $d)
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
                                        <div class="text">{!! substr($d->description,0,140) !!}</div>
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
@push('scripts')

<script src="{{asset('assets/js/jquery.fancybox.js')}}"></script>
<script src="{{asset('assets/js/mmenu.polyfills.js')}}"></script>
<script src="{{asset('assets/js/jquery.modal.min.js')}}"></script>

@endpush
