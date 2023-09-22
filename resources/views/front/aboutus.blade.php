@extends('front.layout.main')
{{-- @section('title')
{{ __('About Us') }}
@endsection --}}
@section('main.container')

 <section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
    <div class="auto-container">
        <div class="title-outer">
            <h1>{{ __('About Us') }}</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li>{{ __('About Us') }}</li>
            </ul>
        </div>
    </div>
</section>

@endsection
