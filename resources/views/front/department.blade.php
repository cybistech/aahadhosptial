@extends('front.layout.main')
@section('title')
 {{__('messages.Department')}}
@endsection
@section('main.container')


<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
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
                        @include('front.components.department')
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
