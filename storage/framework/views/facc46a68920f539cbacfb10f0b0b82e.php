<?php $__env->startSection('main.container'); ?>

<section class="page-title" style="background-image: url(<?php echo e(asset('upload/department/department.jpg')); ?>);">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Contact Us</h1>
            <ul class="page-breadcrumb">
                <li><a href="<?php echo e(route('home')); ?>">Home</a></li>
                <li>Contact</li>
            </ul>
        </div>
    </div>
</section>

<section class="map-section">
    <div class="auto-container">
        <div class="map-outer">
            <div class="map-canvas"
                data-zoom="12"
                data-lat="-37.817085"
                data-lng="144.955631"
                data-type="roadmap"
                data-hue="#ffc400"
                data-title="Envato"
                data-icon-path="images/icons/map-marker.png"
                data-content="Melbourne VIC 3000, Australia<br><a href='mailto:info@youremail.com'>info@youremail.com</a>">
            </div>
        </div>
    </div>
</section>
<!-- End Map Section -->

        <?php
            $setting=setting();
            $department=department();
            $news=news();
        ?>
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
                        <p><a href="tel:<?php echo e($setting->phone_no); ?>"><?php echo e($setting->phone_no); ?></a></p>
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

<?php $__env->stopSection(); ?>
<?php $__env->startPush('scripts'); ?>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaaCBm4FEmgKs5cfVrh3JYue3Chj1kJMw"></script>
<script src="<?php echo e(asset('assets/js/map-script.js')); ?>"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/contactus.blade.php ENDPATH**/ ?>