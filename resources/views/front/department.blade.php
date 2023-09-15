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

@endsection
