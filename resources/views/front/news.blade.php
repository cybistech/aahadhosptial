@extends('front.layout.main')
@section('title')
 {{__('messages.News')}}
@endsection


@section('main.container')

<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
    <div class="auto-container">
        <div class="title-outer">
            <h1>News</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('news')}}">Home</a></li>
                <li>News</li>
            </ul>
        </div>
    </div>
</section>
{{-- {{ $index % 2 == 0 ? 'even' : 'odd' }}  --}}
<section class="blog-section blog-checkerboard">
    @foreach ($newsPost as $index => $n)
        <div class="auto-container">
            <div class="news-block-three">
                <div class="inner-box">
                    <a href="{{ route('news_detail', ['slug' => $n->slug]) }}">
                        <div class="image-box">
                            <?php
                                if($n->featured_image){
                                    $image=asset('upload/news')."/".$n->featured_image;
                                }else{
                                    $image=asset('upload/profile/profile.png');
                                }
                            ?>
                            <figure class="image"><img style=" width: 585px; height: 330px;" src="{{ $image }}" alt=""></figure>
                            <a href="{{ route('news_detail', ['slug' => $n->slug]) }}" class="date">{{ \Carbon\Carbon::parse($n->created_at)->format('j F, Y') }}</a>
                        </div>
                    </a>
                    <div class="content-box">
                        <h4><a href="{{ route('news_detail', ['slug' => $n->slug]) }}">{{ $n->title }}</a></h4>
                        <a href="{{ route('news_detail', ['slug' => $n->slug]) }}">
                            <div class="text">{{ substr($n->contents,0,250) }}</div>
                            <div class="theme-btn btn-style-one read-more"><span class="btn-title">Read More</span></div>
                            <div class="post-info">
                            <div class="post-author">By Admin Rose</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</section>

@endsection
