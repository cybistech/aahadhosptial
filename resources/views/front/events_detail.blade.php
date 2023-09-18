@extends('front.layout.main')
@section('title')
{{ $newsDetail->title }}
@endsection

@section('main.container')

<section class="page-title" style="background-image: url({{asset('upload/department/department.jpg')}});">
    <div class="auto-container">
        <div class="title-outer">
            <h1>{{ $newsDetail->title }}</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{route('home')}}">Home</a></li>
                <li>Events Detail</li>
            </ul>
        </div>
    </div>
</section>

    <div class="sidebar-page-container">
        <div class="auto-container">
            <div class="row clearfix">
                <div class="content-side col-lg-8 col-md-12 col-sm-12">
                    <div class="blog-post">
                        <div class="news-block">
                            <div class="inner-box">
                                <?php
                                    if($newsDetail->featured_image){
                                        $image=asset('upload/news')."/".$newsDetail->featured_image;
                                    }else{
                                        $image=asset('upload/profile/profile.png');
                                    }
                                ?>
                                <div class="image"><img src="{{$image}}" alt="{{ $newsDetail->title }}" /></div>
                                <div class="lower-content">
                                    <ul class="post-info">
                                        <li><span class="far fa-user"></span> Admin</li>
                                        <li><span class="far fa-calendar"></span>{{ \Carbon\Carbon::parse($newsDetail->created_at)->format('j F, Y') }}</li>
                                    </ul>
                                    {{-- Here we placed the contents of the News Description --}}
                                    <h3>What is The Success rate of a root canel?</h3>
                                    <p>Nullam mauris vitae tortor sodales efficitur. Quisque orci ante. Proin amet turpis l Nullam mauris vitae tortor sodales efficitur. There have been a lot of cases in which people were not provided with accurate reports that eventually affected their medical treatment. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <blockquote>It's a beautiful day in this neighborhood a beautiful day for a neighbor. Would you be mine could you be mine Its a neighborly day in this beautywood a neighborly day for a beauty.</blockquote>
                                    <p>There anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious <a href="#">here is link.</a></p>
                                    <div class="two-column row">
                                        <div class="image-column col-lg-6 col-md-6 col-sm-12">
                                            <figure class="image wow fadeIn"><img src="images/resource/blog-1.jpg" alt=""></figure>
                                        </div>
                                        <div class="content-column col-lg-6 col-md-6 col-sm-12">
                                            <p>know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur which toil and pain can undertakes laborious physical exercise. </p>
                                        </div>
                                    </div>
                                    <p>Over the river and through the woods was more dangerous back when cars had crummy bias-ply tires, rear-wheel drive. Kevin tail capicola bresaola, prosciutto swine cupim tri-tip boudin shoulder frankfurter. This process repeats many times per second until the vehicle stops or you lift your foot off the brake pedal ordinary brakes. Kevin tail capicola bresaola, prosciutto swine cupim tri-tip boudin shoulder frank furter</p>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="author-box">
                        <div class="inner-box clearfix">
                            <div class="thumb"><img src="{{asset('upload/profile')."/".$newsDetail->user->profile_pic}}" alt=""></div>
                            <span class="title">Author</span>
                            <h4 class="name"> {{ $newsDetail->user->name }} </h4>
                        </div>
                    </div>

                    <div class="related-news">
                        <div class="group-title"><h3>Related News</h3></div>
                        <div class="row">
                            @foreach ($news as $n)
                            <div class="news-block col-lg-6 col-md-6 col-sm-12 wow fadeInUp">
                                    <div class="inner-box">
                                        <a href="{{ route('event_detail', ['slug' => $n->slug]) }}">
                                            <div class="image-box">
                                                <?php
                                                    if($n->featured_image){
                                                        $image=asset('upload/news')."/".$n->featured_image;
                                                    }else{
                                                        $image=asset('upload/profile/profile.png');
                                                    }
                                                ?>
                                                <figure class="image"><img style=" width: 585px; height: 330px;" src="{{ $image }}" alt=""></figure>
                                                <a href="{{ route('event_detail', ['slug' => $n->slug]) }}" class="date">{{ \Carbon\Carbon::parse($n->created_at)->format('j F, Y') }}</a>
                                            </div>
                                        </a>
                                        <a href="{{ route('event_detail', ['slug' => $n->slug]) }}">
                                            <div class="lower-content">
                                                <h4><a href="{{ route('event_detail', ['slug' => $n->slug]) }}">{{ substr($n->title,0,25) }}</a></h4>
                                                <div class="text">{{ substr($n->contents,0,75) }}</div>
                                                    <div class="post-info">
                                                    <div class="post-author">{{ $n->user->name }}</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                </div>

                <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                    <aside class="sidebar">
                        <!--search box-->
                        {{-- <div class="sidebar-widget search-box">
                            <form method="post" action="blog.html">
                                <div class="form-group">
                                    <input type="search" name="search-field" value="" placeholder="Search....." required="">
                                    <button type="submit"><span class="icon fa fa-search"></span></button>
                                </div>
                            </form>
                        </div> --}}


                        <div class="sidebar-widget category-list">
                            <div class="sidebar-title"><h3>Categories</h3></div>
                            <ul class="cat-list">
                                @foreach ($news_categories as $c)
                                    <li><a href="{{ route('manage_categories', ['slug' => $c->slug]) }}">{{ $c->name }}</a></li>
                                @endforeach
                            </ul>
                        </div>

                        <div class="sidebar-widget latest-news">
                            <div class="sidebar-title"><h3>Popular Posts</h3></div>
                            <div class="widget-content">
                                @foreach ($news as $n)
                                    <article class="post">
                                        <?php
                                            if($n->featured_image){
                                                $image=asset('upload/news')."/".$n->featured_image;
                                            }else{
                                                $image=asset('upload/profile/profile.png');
                                            }
                                        ?>
                                        <div class="post-thumb"><a href="{{ route('news_detail', ['slug' => $n->slug]) }}"><img style="height: 85px;" src="{{$image}}" alt="{{$n->title}}"></a></div>
                                        <h5><a href="{{ route('news_detail', ['slug' => $n->slug]) }}">{{$n->title}}</a></h5>
                                        <div class="post-info">{{ \Carbon\Carbon::parse($n->created_at)->format('j F, Y') }}</div>
                                    </article>
                                @endforeach
                            </div>
                        </div>

                        @php
                            $tags = explode(' ', $newsDetail->tags);
                        @endphp

                        <!-- Tags -->
                        <div class="sidebar-widget tags">
                            <div class="sidebar-title"><h3>Tags</h3></div>
                            <ul class="popular-tags clearfix">
                                @foreach($tags as $tag)
                                    <li><a href="#">{{ $tag }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- End Sidebar Container -->



@endsection
