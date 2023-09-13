<?php $__env->startSection('title'); ?>
 <?php echo e(__('messages.News')); ?>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('main.container'); ?>

<section class="page-title" style="background-image: url(images/background/8.jpg);">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Checkerboard</h1>
            <ul class="page-breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>Blog</li>
            </ul>
        </div>
    </div>
</section>

<section class="blog-section blog-checkerboard">
    <?php $__currentLoopData = $newsPost; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $n): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="auto-container">
        <div class="news-block-three <?php echo e($index % 2 == 0 ? 'even' : 'odd'); ?> ">
            <div class="inner-box">
                <div class="image-box">
                    <?php
                                if($n->featured_image){
                                    $image=asset('upload/news')."/".$n->featured_image;
                                }else{
                                    $image=asset('upload/profile/profile.png');
                                }
                            ?>
                    <figure class="image"><a href="blog-post-image.html"><img src="<?php echo e($image); ?>" alt=""></a></figure>
                    <a href="#" class="date"><?php echo e(\Carbon\Carbon::parse($n->created_at)->format('j F, Y')); ?></a>
                </div>
                <div class="content-box">
                    <h4><a href="blog-post-image.html"><?php echo e($n->title); ?></a></h4>
                    <div class="text"><?php echo e($n->contents); ?></div>
                    <a href="blog-post-image.html" class="theme-btn btn-style-one read-more"><span class="btn-title">Read More</span></a>
                    <div class="post-info">
                        <div class="post-author">By <a href="#">Admin Rose</a></div>
                        <ul class="post-option">
                            <li><a href="#">0 <i class="far fa-heart"></i></a></li>
                            <li><a href="#">0 <i class="far fa-comments"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</section>

<!-- Clients Section -->
<section class="clients-section alternate">
    <div class="auto-container">

        <!-- Sponsors Outer -->
        <div class="sponsors-outer">
            <!--clients carousel-->
            <ul class="clients-carousel owl-carousel owl-theme">
                <li class="slide-item"> <a href="#"><img src="images/clients/1.png" alt=""></a> </li>
                <li class="slide-item"> <a href="#"><img src="images/clients/2.png" alt=""></a> </li>
                <li class="slide-item"> <a href="#"><img src="images/clients/3.png" alt=""></a> </li>
                <li class="slide-item"> <a href="#"><img src="images/clients/4.png" alt=""></a> </li>
                <li class="slide-item"> <a href="#"><img src="images/clients/5.png" alt=""></a> </li>
            </ul>
        </div>
    </div>
</section>
<!--End Clients Section -->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/news.blade.php ENDPATH**/ ?>