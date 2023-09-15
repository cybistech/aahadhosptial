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
                <li><a href="{{isset($d->facebook_id)?$d->facebook_id:'https://www.facebook.com'}}"><span class="fab fa-facebook-f"></span></a></li>
                <li><a href="{{isset($d->twitter_id)?$d->twitter_id:'https://twitter.com/search-home'}}"><span class="fab fa-twitter"></span></a></li>
                <li><a href="{{isset($d->instagram_id)?$d->instagram_id:'https://www.instagram.com/?hl=en'}}"><span class="fab fa-instagram"></span></a></li>
                <li><a href="{{isset($d->linkdin_id)?$d->linkdin_id:'https://www.linkdine.com/?hl=en'}}"><span class="fab fa-linkedin-in"></span></a></li>
            </ul>
        </div>
        <div class="info-box">
            <h5 class="name"><a href="{{url('doctors/').'/'.$d->slug}}">{{ $d->name }}</a></h5>
            <span class="">{{substr($d->about_us,0,100)}}</span>
        </div>
    </div>
</div>