@extends('front.layout.main')
@section('title')
 {{__('messages.Department')}}
@endsection
@section('main.container')


<section class="page-title" style="background-image: url(images/background/8.jpg);">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Departments</h1>
            <ul class="page-breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>Departments</li>
            </ul>
        </div>
    </div>
</section>

 <section class="services-section-two">
    <div class="auto-container">

        <div class="carousel-outer">
            <div class="row">
                @if (count($department)>0)

                    @foreach ($department as $d)
                        <div class="service-block-two col-lg-4 col-md-6 col-sm-12">
                            <div class="inner-box">
                                <div class="image-box">
                                    {{-- <figure class="image"><a><img src="{{asset('upload/departmrnt').'/'.$d->image}}" alt="{{ $d->name }}"></a></figure> --}}
                                </div>
                                <div class="lower-content">
                                    <div class="title-box">
                                        <span class=""><a href="{{url('departments').'/'.$d->slug}}"><img src="{{asset('upload/department').'/'.$d->image}}" alt="{{ $d->name }}"></a></span>
                                        <h4><a href="{{url('departments').'/'.$d->slug}}">{{ $d->name }}</a></h4>
                                    </div>
                                    <div class="text"><a>{{substr($d->description,0,75)}}</a></div>
                                    <span class="icon-right flaticon-heart-2"></span>
                                </div>
                            </div>
                        </div>
                    @endforeach

                @endif
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
