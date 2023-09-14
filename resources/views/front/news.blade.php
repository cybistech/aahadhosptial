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

<section class="blog-section blog-checkerboard">
    @foreach ($newsPost as $index => $n)
    <div class="auto-container">
        <div class="news-block-three {{ $index % 2 == 0 ? 'even' : 'odd' }} ">
            <div class="inner-box">
                <div class="image-box">
                    <?php
                                if($n->featured_image){
                                    $image=asset('upload/news')."/".$n->featured_image;
                                }else{
                                    $image=asset('upload/profile/profile.png');
                                }
                            ?>
                    <figure class="image"><a href="{{route('news_detail')}}"><img src="{{ $image }}" alt=""></a></figure>
                    <a href="#" class="date">{{ \Carbon\Carbon::parse($n->created_at)->format('j F, Y') }}</a>
                </div>
                <div class="content-box">
                    <h4><a href="{{route('news_detail')}}">{{ $n->title }}</a></h4>
                    <div class="text">{{$n->contents}}</div>
                    <a href="{{route('news_detail')}}" class="theme-btn btn-style-one read-more"><span class="btn-title">Read More</span></a>
                    <div class="post-info">
                        <div class="post-author">By <a href="#">Admin Rose</a></div>
                        <ul class="post-option">
                            <li><a href="#">0 <i class="far fa-heart"></i></a></li>
                            <li><a href="#">0 <i class="far fa-comments"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach
</section>

<!-- Clients Section -->
<section class="clients-section alternate">
    <div class="auto-container">

        <!-- Sponsors Outer -->
        <div class="sponsors-outer">
            <!--clients carousel-->
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
<!--End Clients Section -->

@endsection
