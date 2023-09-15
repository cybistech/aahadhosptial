<div class="service-block-two col-lg-4 col-md-6 col-sm-12">
    <div class="inner-box">
        <a href="{{url('departments').'/'.$d->slug}}">
            <div class="image-box">
                <figure class="image"><img style="height: 265.13px;" src="{{asset('upload/department').'/'.$d->image}}" alt="{{ $d->name }}"></figure>
            </div>
            <div class="lower-content">
                <div class="title-box">
                    <span class="icon flaticon-heart-2"></span>
                    <h4>{{ $d->name }}</a></h4>
                </div>
                <a href="{{url('departments').'/'.$d->slug}}">
                    <div class="text">{{substr($d->description,0,75)}}</div>
                </a>
                <span class="icon-right flaticon-heart-2"></span>
            </div>
        </a>
    </div>
</div>
