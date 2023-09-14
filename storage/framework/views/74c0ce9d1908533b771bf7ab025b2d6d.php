    <footer class="main-footer">

        <div class="widgets-section" style="background-image: url(<?php echo e(asset('assets/images/background/7.jpg')); ?>);">
            <div class="auto-container">
                <div class="row">

                    <div class="big-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                        <div class="row">

                            <div class="footer-column col-xl-7 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget about-widget">
                                    <div class="logo">
                                        <a href="<?php echo e(route('home')); ?>"><img src="<?php echo e(asset('assets/images/logo-2.png')); ?>" alt="" /></a>
                                    </div>
                                    <div class="text">
                                        <p>Our Clinic has grown to provide a world class facility for the clinic advanced restorative. </p>
                                        <p>We are among the most qualified implant providers in the AUS with over 30 years of quality training and experience.</p>
                                    </div>
                                    <ul class="social-icon-three">
                                        <li><a href="<?php echo e($setting->facebook_id); ?>"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="<?php echo e($setting->instagram_id); ?>"><i class="fab fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>


                            <div class="footer-column col-xl-5 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget">
                                    <h2 class="widget-title">Departments</h2>
                                    <ul class="user-links">
                                        <?php $__currentLoopData = $department->take(6); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li><a href="<?php echo e(url('departments').'/'.$d->slug); ?>"><?php echo e($d->name); ?></a></li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="big-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                        <div class="row">

                            


                            <div class="footer-column col-lg-6 col-md-6 col-sm-12">

                                <div class="footer-widget contact-widget">
                                    <h2 class="widget-title">Contact Us</h2>

                                    <div class="widget-content">
                                        <ul class="contact-list">
                                            <li>
                                                <span class="icon flaticon-placeholder"></span>
                                                <div class="text"><?php echo e($setting->address); ?></div>
                                            </li>

                                            <li>
                                                <span class="icon flaticon-call-1"></span>
                                                <div class="text"><?php echo e($setting->working_day); ?></div>
                                                <a href="tel:<?php echo e($setting->phone_no); ?>"><strong><?php echo e($setting->phone_no); ?></strong></a>
                                            </li>

                                            <li>
                                                <span class="icon flaticon-email"></span>
                                                <div class="text">Do you have a Question?<br>
                                                <a href="mailto:<?php echo e($setting->email); ?>"><strong><?php echo e($setting->email); ?></strong></a></div>
                                            </li>

                                            <li>
                                                <span class="icon flaticon-back-in-time"></span>
                                                <div class="text"><?php echo e($setting->working_day); ?>

                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>

            <div class="auto-container">
                <div class="inner-container clearfix">
                    <div class="footer-nav">
                        <ul class="clearfix">
                           <li><a href="<?php echo e(route('privacy_policy')); ?>">Privacy Policy</a></li>
                           <li><a href="<?php echo e(route('contact_us')); ?>">Contact</a></li>
                           <li><a href="<?php echo e(route('services')); ?>">Services</a></li>
                        </ul>
                    </div>

                    <div class="copyright-text">
                        <p>Copyright © 2023 <a href="<?php echo e(route('home')); ?>"> Aahad Hospital </a>All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</div>

<script src="<?php echo e(asset('assets/js/jquery.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/popper.min.js')); ?>"></script>

<script src="<?php echo e(asset('assets/plugins/revolution/js/jquery.themepunch.revolution.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/jquery.themepunch.tools.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.actions.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.carousel.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.kenburn.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.migration.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.navigation.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.parallax.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.slideanims.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/plugins/revolution/js/extensions/revolution.extension.video.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/main-slider-script.js')); ?>"></script>

<script src="<?php echo e(asset('assets/js/bootstrap.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/jquery.fancybox.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/mmenu.polyfills.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/jquery.modal.min.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/mmenu.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/appear.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/owl.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/wow.js')); ?>"></script>
<script src="<?php echo e(asset('assets/js/script.js')); ?>"></script>
</body>
</html>


<?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/layout/footer.blade.php ENDPATH**/ ?>