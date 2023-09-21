<div class="team-block-two col-lg-4 col-md-6 col-sm-12 wow fadeInUp">
    <div class="inner-box">
        <div class="image-box">
            <?php
                if($d->image){
                    $image=asset('upload/doctor')."/".$d->image;
                }else{
                    $image=asset('upload/profile/profile.png');
                }
            ?>
            <figure class="image"><a href="{{url('doctors/').'/'.$d->slug}}"><img src="{{ $image }}" alt="{{ $d->name }}"></a></figure>
            <ul class="social-links">
                @if (!empty($d->facebook_id))
                    <li><a href="{{ $d->facebook_id }}"><span class="fab fa-facebook"></span></a></li>
                @endif
                @if (!empty($d->google_id))
                    <li><a href="{{ $d->google_id }}"><span class="fab fa-google-plus-g"></span></a></li>
                @endif
                @if (!empty($d->twitter_id))
                    <li><a href="{{ $d->twitter_id }}"><span class="fab fa-twitter"></span></a></li>
                @endif
                @if (!empty($d->instagram_id))
                    <li><a href="{{ $d->instagram_id }}"><span class="fab fa-instagram"></span></a></li>
                @endif
            </ul>
        </div>
        <div class="info-box">
            <h5 class="name"><a href="{{url('doctors/').'/'.$d->slug}}">{{ $d->name }}</a></h5>
            <span class="">{!! substr($d->about_us,0,100) !!}</span>
        </div>
    </div>
</div>
