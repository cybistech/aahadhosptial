<section class="services-section-two">
    <div class="auto-container">

        <div class="carousel-outer">
            <div class="row">
                <?php if(count($department)>0): ?>

                    <?php $__currentLoopData = $department; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="service-block-two col-lg-4 col-md-6 col-sm-12">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure class="image"><a><img src="<?php echo e(asset('upload/department').'/'.$d->image); ?>" alt="<?php echo e($d->name); ?>"></a></figure>
                                </div>
                                <div class="lower-content">
                                    <div class="title-box">
                                        <span class="icon flaticon-heart-2"></span>
                                        <h4><a href="<?php echo e(url('departments').'/'.$d->slug); ?>"><?php echo e($d->name); ?></a></h4>
                                    </div>
                                    <div class="text"><a><?php echo e(substr($d->description,0,75)); ?></a></div>
                                    <span class="icon-right flaticon-heart-2"></span>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                <?php endif; ?>
            </div>
        </div>
    </div>
</section>
<?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/components/department.blade.php ENDPATH**/ ?>