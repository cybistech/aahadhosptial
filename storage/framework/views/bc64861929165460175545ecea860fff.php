<?php $__env->startSection('title'); ?>
 <?php echo e(__('messages.News')); ?>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('main.container'); ?>

<section class="page-title" style="background-image: url(<?php echo e(asset('upload/department/department.jpg')); ?>);">
    <div class="auto-container">
        <div class="title-outer">
            <h1>News</h1>
            <ul class="page-breadcrumb">
                <li><a href="<?php echo e(route('news')); ?>">Home</a></li>
                <li>News</li>
            </ul>
        </div>
    </div>
</section>

<section class="blog-section blog-checkerboard">
    <?php $__currentLoopData = $newsPost; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $n): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="auto-container">
            <div class="news-block-three">
                <div class="inner-box">
                    <a href="<?php echo e(route('news_detail')); ?>">
                        <div class="image-box">
                            <?php
                                if($n->featured_image){
                                    $image=asset('upload/news')."/".$n->featured_image;
                                }else{
                                    $image=asset('upload/profile/profile.png');
                                }
                            ?>
                            <figure class="image"><img style=" width: 585px; height: 330px;" src="<?php echo e($image); ?>" alt=""></figure>
                            <a href="<?php echo e(route('news_detail')); ?>"class="date"><?php echo e(\Carbon\Carbon::parse($n->created_at)->format('j F, Y')); ?></a>
                        </div>
                    </a>
                    <div class="content-box">
                        <h4><a href="<?php echo e(route('news_detail')); ?>"><?php echo e($n->title); ?></a></h4>
                        <a href="<?php echo e(route('news_detail')); ?>">
                            <div class="text"><?php echo e(substr($n->contents,0,250)); ?></div>
                            <div class="theme-btn btn-style-one read-more"><span class="btn-title">Read More</span></div>
                            <div class="post-info">
                            <div class="post-author">By Admin Rose</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/news.blade.php ENDPATH**/ ?>