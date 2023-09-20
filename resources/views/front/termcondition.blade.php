@extends('front.layout.main')
@section('title')
 {{__('messages.Terms & Condition')}}
@endsection
@section('main.container')
<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
    <div class="auto-container">
        <div class="title-outer">
            <h1>{{ __('Terms & Conditions') }}</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li>{{ __('Terms & Conditions') }}</li>
            </ul>
        </div>
    </div>
    </section>
<!--End Page Title-->

<!-- Terms And Conditions -->
<section class="terms-and-condition">
    <div class="auto-container">
       {!! $setting->terms_condition !!}
    </div>
</section>
@endsection
