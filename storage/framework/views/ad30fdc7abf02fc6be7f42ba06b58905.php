<?php $__env->startSection('main.container'); ?>
        <?php
            $setting=setting();
            $department=department();
            $news=news();
        ?>

<section class="main-slider">
    <div class="rev_slider_wrapper fullwidthbanner-container"  id="rev_slider_one_wrapper" data-source="gallery">
        <div class="rev_slider fullwidthabanner" id="rev_slider_one" data-version="5.4.1">
            <ul>
                <li data-index="rs-1" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb=""  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">

                    <img alt="<?php echo e(__('Home Banner')); ?>" title="<?php echo e(__('Home Banner')); ?>" width="1440" height="700" class="rev-slidebg" data-bgfit="cover" data-bgparallax="20" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="<?php echo e(asset('adesign/images/home_1.jpg')); ?>">

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['750','750','750','650']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['-180','-170','-180','-180']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <span class="title">Welcome to our Medical Care Center </span>
                    </div>

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['750','750','750','650']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['-100','-95','-100','-115']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <h2>We take care our <br>patients health</h2>
                    </div>

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['700','750','700','450']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['0','0','0','0']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <div class="text">I realized that becoming a doctor, I can only help a small community. <br>But by becoming a doctor, I can help my whole country. </div>
                    </div>

                    <div class="tp-caption tp-resizeme"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-whitespace="normal"
                    data-width="['650','650','700','300']"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['80','90','90','140']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <div class="btn-box">
                            <a href="<?php echo e(route('departments')); ?>" class="theme-btn btn-style-one"><span class="btn-title">Our Departments</span></a>
                            <a href="<?php echo e(route('doctors')); ?>" class="theme-btn btn-style-two"><span class="btn-title">Our Doctors</span></a>
                        </div>
                    </div>
                </li>

                <li data-index="rs-2" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300"  data-thumb=""  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">

                    <img alt="<?php echo e(__('Home Banner2')); ?>" title="<?php echo e(__('Home Banner2')); ?>" width="1440" height="700" class="rev-slidebg" data-bgfit="cover" data-bgparallax="20" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="<?php echo e(asset('adesign/images/home_2.jpg')); ?>">

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[0,0,0,0]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['750','750','750','650']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['-180','-170','-180','-180']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <span class="title">Welcome to our Medical Care Center </span>
                    </div>

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['750','750','750','650']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['-100','-95','-100','-115']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <h2>We take care our <br>patients health</h2>
                    </div>

                    <div class="tp-caption"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-width="['700','750','700','450']"
                    data-whitespace="normal"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['0','0','0','0']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":1500,"frame":"0","from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <div class="text">I realized that becoming a doctor, I can only help a small community. <br>But by becoming a doctor, I can help my whole country. </div>
                    </div>

                    <div class="tp-caption tp-resizeme"
                    data-paddingbottom="[0,0,0,0]"
                    data-paddingleft="[15,15,15,15]"
                    data-paddingright="[15,15,15,15]"
                    data-paddingtop="[0,0,0,0]"
                    data-responsive_offset="on"
                    data-type="text"
                    data-height="none"
                    data-whitespace="normal"
                    data-width="['650','650','700','300']"
                    data-hoffset="['0','0','0','0']"
                    data-voffset="['80','90','90','140']"
                    data-x="['left','left','left','left']"
                    data-y="['middle','middle','middle','middle']"
                    data-textalign="['top','top','top','top']"
                    data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'>
                        <div class="btn-box">
                            <a href="<?php echo e(route('departments')); ?>" class="theme-btn btn-style-one"><span class="btn-title">Our Departments</span></a>
                            <a href="<?php echo e(route('doctors')); ?>" class="theme-btn btn-style-two"><span class="btn-title">Our Doctors</span></a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>



<section class="top-features">
    <div class="auto-container">
        <div class="row">

            <div class="feature-block col-lg-4 col-md-6 col-sm-12">
                <div class="inner-box">
                    <span class="icon flaticon-charity"></span>
                    <h4><a href="#">Quality & Safety</a></h4>
                    <p>Our Delmont hospital utilizes state of the art technology and employs a team of true experts.</p>
                </div>
            </div>

            <div class="feature-block col-lg-4 col-md-6 col-sm-12">
                <div class="inner-box">
                    <span class="icon flaticon-lifeline"></span>
                    <h4><a href="#">Leading Technology</a></h4>
                    <p>Our Delmont hospital utilizes state of the art technology and employs a team of true experts.</p>
                </div>
            </div>

            <div class="feature-block col-lg-4 col-md-6 col-sm-12">
                <div class="inner-box">
                    <span class="icon flaticon-doctor"></span>
                    <h4><a href="#">Experts by Experience</a></h4>
                    <p>Our Delmont hospital utilizes state of the art technology and employs a team of true experts.</p>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="about-section">
    <div class="auto-container">
        <div class="row">
            <div class="content-column col-lg-6 col-md-12 col-sm-12 order-2">
                <div class="inner-column">
                    <div class="sec-title">
                        <h2>CEO's Message</h2>
                        <span class="sub-title"><?php echo e($setting->ceo_name); ?></span>
                        <?php if($setting->ceo_message): ?>
                            <?php echo $setting->ceo_message; ?>

                        <?php endif; ?>
                    </div>
                </div>
            </div>

            <!-- Images Column -->
            <div class="images-column col-lg-6 col-md-12 col-sm-12">
                <div class="inner-column">
                    <figure class="image-1"><img src="<?php echo e(asset('upload/ceo/').'/'.$setting->ceo_image); ?>" alt="<?php echo e($setting->ceo_name); ?>"></figure>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="services-section">
    <div class="auto-container">
        <div class="sec-title text-center">
            <span class="sub-title">OUR SERVICES</span>
            <h2>We Care Our Patients.</h2>
            <span class="divider"></span>
        </div>

        <div class="row">

            <?php if(count($services)>0): ?>
                <?php $__currentLoopData = $services; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                   <?php echo $__env->make('front.components.services', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>

        </div>
        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services <a href="<?php echo e(route('services')); ?>">Explore all Services</a></div>
    </div>
</section>

<section class="services-section-two">
    <div class="auto-container">
        <div class="sec-title text-center">
            <span class="sub-title">Our Departments</span>
            <h2>Our Dedicated Departments</h2>
            <span class="divider"></span>
        </div>

        <div class="carousel-outer">
            <div class="row">
                <?php if(count($department)>0): ?>
                    <?php $__currentLoopData = $department->take(3); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $__env->make('front.components.department', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </div>
        </div>
        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services <a href="<?php echo e(route('departments')); ?>">Explore all Departments</a></div>
    </div>
</section>

<section class="team-section">
    <div class="auto-container">
        <div class="sec-title text-center">
            <span class="sub-title">Our Doctor</span>
            <h2>Our Dedicated Doctors Team</h2>
            <span class="divider"></span>
        </div>

        <div class="row">
            <?php $__currentLoopData = $doctors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="team-block col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                    <div class="inner-box">
                        <?php
                            if($d->image){
                                $image=asset('upload/doctor')."/".$d->image;
                            }else{
                                $image=asset('upload/profile/profile.png');
                            }
                        ?>
                        <figure class="image"><a href="<?php echo e(url('doctors/').'/'.$d->slug); ?>"><img class="img" src="<?php echo e($image); ?>" alt="<?php echo e($d->name); ?>" title="<?php echo e($d->name); ?>" width="260" height="330.27" ></a></figure>
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
                        <div class="info-box">
                            <h4 class="name"><a href="<?php echo e(url('doctors/').'/'.$d->slug); ?>"><?php echo e($d->name); ?></a></h4>
                            <span class="designation">Senior Dr. at Delmont</span>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>

        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services <a href="<?php echo e(route('doctors')); ?>">Explore all Dr. Team</a></div>
    </div>
</section>












<section class="news-section">
    <div class="auto-container">

        <div class="sec-title text-center">
            <span class="title">OUR BLOG</span>
            <h2>Recent Articles and News</h2>
            <span class="divider"></span>
        </div>


        <div class="row">
            <?php if(count($news)>0): ?>
                <?php $__currentLoopData = $news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $n): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="news-block col-lg-4 col-md-6 col-sm-12 wow fadeInUp">
                        <div class="inner-box">
                            <a href="<?php echo e(route('news_detail', ['slug' => $n->slug])); ?>">
                                <div class="image-box">
                                    <figure class="image"><img width="350" height="192" style="height: 177.7px" src="<?php echo e(asset('upload/news')."/".$n->featured_image); ?>" alt="<?php echo e($n->title); ?>"></figure>
                                    <a href="<?php echo e(route('news_detail', ['slug' => $n->slug])); ?>" class="date"><?php echo e(\Carbon\Carbon::parse($n->created_at)->format('j F, Y')); ?></a>
                                </div>
                            </a>
                            <div class="lower-content">
                                <h4><a href="<?php echo e(route('news_detail', ['slug' => $n->slug])); ?>"><?php echo e(substr($n->title,0,25)); ?></a></h4>
                                <a href="<?php echo e(route('news_detail', ['slug' => $n->slug])); ?>">
                                <div class="text"><?php echo substr($n->contents,0,75); ?></div>
                                    <div class="post-info">
                                        <div class="post-author"><?php echo e($n->user->name); ?></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </div>
        <div class="sec-bottom-text">Don’t hesitate, contact us for better help and services <a href="<?php echo e(route('news')); ?>">Explore all News</a></div>
    </div>
</section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/home.blade.php ENDPATH**/ ?>