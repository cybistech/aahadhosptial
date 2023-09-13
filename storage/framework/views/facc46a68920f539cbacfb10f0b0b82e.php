<?php $__env->startSection('title'); ?>
 <?php echo e(__('Contact Us')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('main.container'); ?>

<section class="page-title" style="background-image: url(images/background/8.jpg);">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Contact Us</h1>
            <ul class="page-breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>Contact</li>
            </ul>
        </div>
    </div>
</section>


<section class="contact-section" id="contact">
    <div class="small-container">
        <div class="sec-title text-center">
            <span class="sub-title">Contact Now</span>
            <h2>Write us a Message !</h2>
            <span class="divider"></span>
        </div>

        <div class="contact-box">
            <div class="row">
                <div class="contact-info-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner">
                        <span class="icon flaticon-worldwide"></span>
                        <h4><strong>Address</strong></h4>
                        <p><?php echo e($setting->address); ?></p>
                    </div>
                </div>

                <div class="contact-info-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner">
                        <span class="icon flaticon-phone"></span>
                        <h4><strong>Phone</strong></h4>
                        <p><a href="#"><?php echo e($setting->phone_no); ?></a></p>
                    </div>
                </div>

                <div class="contact-info-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner">
                        <span class="icon flaticon-email"></span>
                        <h4><strong>Email</strong></h4>
                        <p><a href="mailto:support@example.com"><?php echo e($setting->email); ?></a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="part-form-main-box">
            <?php if(Session::get("message")): ?>
                <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
                    <?php echo e(Session::get("message")); ?>

                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
            <?php endif; ?>
        <div class="form-box">
            <div class="contact-form">
                <form action="<?php echo e(url('savecontact')); ?>" method="post" id="email-form">
                    <?php echo csrf_field(); ?>
                    <div class="row">
                        <div class="form-group col-lg-12">
                            <div class="response"></div>
                        </div>

                        <div class="col-lg-6 col-md-12">
                            <div class="form-group">
                                <input type="text" name="name" class="username" placeholder="Full Name *">
                            </div>

                            <div class="form-group">
                                <input type="email" name="email" class="email" placeholder="Email Address *">
                            </div>

                            <div class="form-group">
                                <input type="text" name="topic" class="username" placeholder="Topic">
                            </div>

                            <div class="form-group">
                                <input type="text" name="phone" class="username" placeholder="Your Phone">
                            </div>
                        </div>

                        <div class="col-lg-6 col-md-12">
                            <div class="form-group">
                                <textarea name="message" class="message" placeholder="Massage"></textarea>
                            </div>

                        </div>

                        <div class="form-group col-lg-12 text-center pt-3">
                            <button class="theme-btn btn-style-one" type="submit" id="submit" name="submit-form"><span class="btn-title">Send Message</span></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>


<section class="clients-section alternate">
    <div class="auto-container">

        <div class="sponsors-outer">
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/contactus.blade.php ENDPATH**/ ?>