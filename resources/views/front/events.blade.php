@extends('front.layout.main')
@section('title')
 {{__('messages.Events')}}
@endsection


@section('main.container')

<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Events</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('news')}}">Home</a></li>
                <li>Events</li>
            </ul>
        </div>
    </div>
</section>
{{-- {{ $index % 2 == 0 ? 'even' : 'odd' }}  --}}

<section class="blog-section blog-checkerboard">
    @foreach ($events as $index => $e)
        <div class="auto-container">
            <div class="news-block-three">
                <div class="inner-box">
                    <a href="{{ route('event_detail', ['slug' => $e->slug]) }}">
                        <div class="image-box">
                            <?php
                                if($e->featured_image){
                                    $image=asset('upload/news')."/".$e->featured_image;
                                }else{
                                    $image=asset('upload/profile/profile.png');
                                }
                            ?>
                            <figure class="image"><img style=" width: 585px; height: 330px;" src="{{ $image }}" alt=""></figure>
                            <a href="{{ route('event_detail', ['slug' => $e->slug]) }}" class="date">{{ \Carbon\Carbon::parse($e->created_at)->format('j F, Y') }}</a>
                        </div>
                    </a>
                    <div class="content-box">
                        <h4><a href="{{ route('event_detail', ['slug' => $e->slug]) }}">{{ $e->title }}</a></h4>
                        <a href="{{ route('event_detail', ['slug' => $e->slug]) }}">
                            <div class="text">{!! substr($e->contents,0,250) !!}</div>
                            <div class="theme-btn btn-style-one read-more"><span class="btn-title">Read More</span></div>
                            <div class="post-info">
                            <div class="post-author">{{ $e->user->name }}</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
    <div>
        {{ $events->links() }}
    </div>
</section>

@endsection
