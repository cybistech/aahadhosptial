@extends('front.layout.main')
{{-- @section('title')
 {{__("messages.Privacy Policy")}}
@endsection --}}
@section('main.container')
    <section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
        <div class="auto-container">
            <div class="title-outer">
                <h1>Privacy Policy</h1>
                <ul class="page-breadcrumb">
                    <li><a href="{{route('news')}}">Home</a></li>
                    <li>Privacy Policy</li>
                </ul>
            </div>
        </div>
    </section>

    <div style="margin: 5rem;">
        {!! $setting->privacy_policy !!}
    </div>

@endsection
