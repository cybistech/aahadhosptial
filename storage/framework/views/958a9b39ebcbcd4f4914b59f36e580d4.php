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
            <figure class="image"><a href="<?php echo e(url('doctors/').'/'.$d->slug); ?>"><img src="<?php echo e($image); ?>" alt="<?php echo e($d->name); ?>"></a></figure>
            <ul class="social-links">
                <?php if(!empty($d->facebook_id)): ?>
                    <li><a href="<?php echo e($d->facebook_id); ?>"><span class="fab fa-facebook"></span></a></li>
                <?php endif; ?>
                <?php if(!empty($d->google_id)): ?>
                    <li><a href="<?php echo e($d->google_id); ?>"><span class="fab fa-google-plus-g"></span></a></li>
                <?php endif; ?>
                <?php if(!empty($d->twitter_id)): ?>
                    <li><a href="<?php echo e($d->twitter_id); ?>"><span class="fab fa-twitter"></span></a></li>
                <?php endif; ?>
                <?php if(!empty($d->instagram_id)): ?>
                    <li><a href="<?php echo e($d->instagram_id); ?>"><span class="fab fa-instagram"></span></a></li>
                <?php endif; ?>
            </ul>
        </div>
        <div class="info-box">
            <h5 class="name"><a href="<?php echo e(url('doctors/').'/'.$d->slug); ?>"><?php echo e($d->name); ?></a></h5>
            <span class=""><?php echo substr($d->about_us,0,100); ?></span>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/components/doctor.blade.php ENDPATH**/ ?>