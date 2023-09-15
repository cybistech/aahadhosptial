<section class="services-section-two">
    <div class="auto-container">

        <div class="carousel-outer">
            <div class="row">
                @if (count($department)>0)

                    @foreach ($department as $d)
                        <div class="service-block-two col-lg-4 col-md-6 col-sm-12">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure class="image"><a><img src="{{asset('upload/department').'/'.$d->image}}" alt="{{ $d->name }}"></a></figure>
                                </div>
                                <div class="lower-content">
                                    <div class="title-box">
                                        <span class="icon flaticon-heart-2"></span>
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
