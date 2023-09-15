<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Department Details')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('main.container'); ?>




<section class="page-title" style="background-image: url(<?php echo e(asset('upload/department/department.jpg')); ?>);">
<div class="auto-container">
    <div class="title-outer">
        <h1><?php echo e($departmentdetails->name); ?></h1>
        <ul class="page-breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li>Department Details</li>
        </ul>
    </div>
</div>
</section>

<div class="sidebar-page-container">
<div class="auto-container">
    <div class="row clearfix">

        <div class="content-side col-xl-9 col-lg-8 col-md-12 col-sm-12 order-2">
            <div class="service-detail">
                <div class="images-box">
                    <figure class="image wow fadeIn"><a src="#" class="lightbox-image" data-fancybox="services"><img src="<?php echo e(asset('upload/department').'/'.$departmentdetails->image); ?>"  alt="<?php echo e($departmentdetails->name); ?>"></a></figure>
                </div>

                <div class="content-box">
                    <div class="title-box">
                        <h2><?php echo e($departmentdetails->name); ?></h2>
                    </div>
                    <p><?php echo e($departmentdetails->description); ?></p>
                    <div>
                        <div class="row">
                            <div class="image-column col-xl-6 col-lg-12 col-md-12">
                                <figure class="image"><a href="#"class="lightbox-image"><img src="<?php echo e(asset('upload/images/post-img.jpg')); ?>" alt=""></a></figure>
                            </div>
                            <div class="text-column col-xl-6 col-lg-12 col-md-12">
                                <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness.</p>
                                <ul class="list-style-one">
                                    <li>Enhancing Your Vision sit ametcon sec tetur</li>
                                    <li>adipisicing eiusmod tempor tread depth sit tread</li>
                                    <li>eiusmod Your Vision sit ametcon sec tetur sec</li>
                                    <li>adipisicing eiusmod tempor tread depth sit </li>
                                    <li>tread Your Vision sit ametcon sec tetur</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="product-info-tabs">
                        <div class="prod-tabs tabs-box">
                            <ul class="tab-btns tab-buttons clearfix">
                                <li data-tab="#prod-details" class="tab-btn active-btn">Precautions</li>
                                <li data-tab="#prod-spec" class="tab-btn">Intelligence</li>
                                <li data-tab="#prod-reviews" class="tab-btn">Specializations</li>
                            </ul>

                            <div class="tabs-content">

                                <div class="tab active-tab" id="prod-details">
                                    <div class="content">
                                        <p>Suspendisse laoreet at nulla id auctor. Maecenas in dui cursus, lacinia nisl non, blandit lorem. Aliquam vel risus hendrerit, faucibus nisl a, porta sapien. Etiam iaculis mattis quam, nec iaculis velit feugiat quis. Pellentesque sed feugiat dui, ac euismod leo.</p>
                                    </div>
                                </div>

                                <div class="tab" id="prod-spec">
                                    <div class="content">
                                        <p>Suspendisse laoreet at nulla id auctor. Maecenas in dui cursus, lacinia nisl non, blandit lorem. Aliquam vel risus hendrerit, faucibus nisl a, porta sapien. Etiam iaculis mattis quam, nec iaculis velit feugiat quis. Pellentesque sed feugiat dui, ac euismod leo.</p>
                                    </div>
                                </div>

                                <div class="tab" id="prod-reviews">
                                    <div class="content">
                                        <p>Suspendisse laoreet at nulla id auctor. Maecenas in dui cursus, lacinia nisl non, blandit lorem. Aliquam vel risus hendrerit, faucibus nisl a, porta sapien. Etiam iaculis mattis quam, nec iaculis velit feugiat quis. Pellentesque sed feugiat dui, ac euismod leo.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12">
            <aside class="sidebar services-sidebar">

                <div class="sidebar-widget categories">
                    <div class="widget-content">
                        <ul class="services-categories">
                            <li><a href="<?php echo e(route('departments')); ?>">All Departments</a></li>
                            <?php $__currentLoopData = $department; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li <?php if($d->id == $departmentdetails->id): ?> class="active" <?php endif; ?>><a href="<?php echo e(url('departments').'/'.$d->slug); ?>"><?php echo e($d->name); ?></a></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                </div>

                <div class="brochures-box">
                    <div class="inner">
                        <h4>Download Brochures</h4>
                        <div class="text">Etiam tortor lorem, auctor ut orci ut, vehicula ultricies mauris. scelerisque gravida.</div>
                        <a class="theme-btn btn-style-one" href="#"><span class="btn-title"><i class="fa fa-file-pdf"></i> Info Company</span></a>
                        <a class="theme-btn btn-style-one" href="#"><span class="btn-title"><i class="fa fa-file-pdf"></i> Brochure Newest</span></a>
                    </div>
                </div>

                <div class="help-box">
                    <span>Quick Contact</span>
                    <h4>Get Solution</h4>
                    <p>Contact us at the Medicoz office nearest to you or submit a business inquiry online.</p>
                    <a href="<?php echo e(route('contact_us')); ?>" class="theme-btn btn-style-one"><span class="btn-title">Contact</span></a>
                </div>
            </aside>
        </div>
    </div>
</div>
</div>

<section class="services-section-two">
    <div class="auto-container">
        <div class="carousel-outer">
            <div class="services-carousel owl-carousel owl-theme default-dots">
                <?php $__currentLoopData = $department; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="service-block-two">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><img style="height: 265.13px;" src="<?php echo e(asset('upload/department').'/'.$d->image); ?>" alt="<?php echo e($d->name); ?>"></figure>
                        </div>
                        <div class="lower-content">
                            <div class="title-box">
                                <span class="icon flaticon-heart-2"></span>
                                <h4><?php echo e($d->name); ?></a></h4>
                            </div>
                            <a href="<?php echo e(url('departments').'/'.$d->slug); ?>">
                                <div class="text"><?php echo e(substr($d->description,0,75)); ?></div>
                            </a>
                        </div>
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
        </div>
    </div>
</section>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/departmentdetails.blade.php ENDPATH**/ ?>