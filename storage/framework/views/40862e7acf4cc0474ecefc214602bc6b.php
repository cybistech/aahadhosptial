<div class="service-block-two col-lg-4 col-md-6 col-sm-12">
    <div class="inner-box">
        <a href="<?php echo e(url('departments').'/'.$d->slug); ?>">
            <div class="image-box">
                <figure class="image"><img style="height: 265.13px;" src="<?php echo e(asset('upload/department').'/'.$d->image); ?>" alt="<?php echo e($d->name . ' Department'); ?>" title="<?php echo e($d->name); ?>" width="363.33" height="265.13"></figure>
            </div>
            <div class="lower-content">
                <div class="title-box">
                    <span class="icon <?php echo e($d->icon); ?>"></span>
                    <h4><?php echo e($d->name); ?></a></h4>
                </div>
                <a href="<?php echo e(url('departments').'/'.$d->slug); ?>">
                    <div class="text"><?php echo substr($d->description,0,140); ?></div>
                </a>
                <span class="icon-right flaticon-heart-2"></span>
            </div>
        </a>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/components/department.blade.php ENDPATH**/ ?>