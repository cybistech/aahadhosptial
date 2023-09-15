<?php $__env->startSection('title'); ?>
<?php echo e($serviceDetail->name); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('main.container'); ?>

    <section class="page-title" style="background-image: url(images/background/8.jpg);">
        <div class="auto-container">
            <div class="title-outer">
                <h1>Departments</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li>Departments</li>
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
                            <figure class="image wow fadeIn"><a href="images/resource/service-single.jpg" class="lightbox-image" data-fancybox="services"><img src="images/resource/service-single.jpg" alt=""></a></figure>
                        </div>

                        <div class="content-box">
                            <div class="title-box">
                                <h2><?php echo e($serviceDetail->name); ?> </h2>
                            </div>
                            <div>
                                <?php if($serviceDetail->description): ?>
                                     <?php echo $serviceDetail->description; ?>

                                <?php endif; ?>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="sidebar-side col-xl-3 col-lg-4 col-md-12 col-sm-12">
                    <aside class="sidebar services-sidebar">

                        <div class="sidebar-widget categories">
                            <div class="widget-content">
                                <ul class="services-categories">
                                    <li><a href="<?php echo e(route('services')); ?>">All Services</a></li>
                                        <?php $__currentLoopData = $service; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li <?php if($s->id == $serviceDetail->id): ?> class="active" <?php endif; ?>><a href="<?php echo e(route('service_detail', ['slug' => $s->slug])); ?>"><?php echo e($s->name); ?></a></li>
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
                            <a href="contact.html" class="theme-btn btn-style-one"><span class="btn-title">Contact</span></a>
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
                    <?php $__currentLoopData = $service; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $__env->make('front.components.services', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
    </section>
    <!-- End service Section -->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/servicesdetail.blade.php ENDPATH**/ ?>