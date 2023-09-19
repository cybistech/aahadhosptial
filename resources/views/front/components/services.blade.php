<div class="service-block col-lg-4 col-md-6 col-sm-12">
    <a href="{{ route('service_detail', ['slug' => $s->slug]) }}">
        <div class="inner-box">
            {{-- <span class=""><img src="{{asset('upload/service').'/'.$s->icon}}" alt="{{ $s->name }}"></span> --}}
            <span class="icon flaticon-heartbeat"></span>
            <h5 style="color: black">{{$s->name}}</h5>
            <a href="{{ route('service_detail', ['slug' => $s->slug]) }}">
                <div class="text">{!! substr($s->description,0,140) !!}</div>
            </a>
        </div>
    </a>
</div>
