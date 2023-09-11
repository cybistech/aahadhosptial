<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><?php echo $__env->yieldContent('title'); ?></title>


<link href="<?php echo e(asset('assets/css/bootstrap.css')); ?>" rel="stylesheet">
<link href="<?php echo e(asset('assets/plugins/revolution/css/settings.css')); ?>" rel="stylesheet" type="text/css"><!-- REVOLUTION SETTINGS STYLES -->
<link href="<?php echo e(asset('assets/plugins/revolution/css/layers.css')); ?>" rel="stylesheet" type="text/css"><!-- REVOLUTION LAYERS STYLES -->
<link href="<?php echo e(asset('plugins/revolution/css/navigation.css')); ?>" rel="stylesheet" type="text/css"><!-- REVOLUTION NAVIGATION STYLES -->
<link href="<?php echo e(asset('assets/css/style.css')); ?>" rel="stylesheet">
<link href="<?php echo e(asset('assets/css/responsive.css')); ?>" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link id="theme-color-file" href="<?php echo e(asset('assets/css/color-themes/default-theme.css')); ?>" rel="stylesheet">

<link rel="shortcut icon" href="<?php echo e(asset('assets/images/favicon.png')); ?>" type="image/x-icon">
<link rel="icon" href="<?php echo e(asset('images/favicon.png')); ?>" type="image/x-icon">


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>

<div class="page-wrapper">


    <header class="main-header header-style-one">


        <div class="header-top">
            <div class="auto-container">
                <div class="inner-container">
                    <div class="top-left">
                        <ul class="contact-list clearfix">
                            <li><i class="flaticon-hospital-1"></i><?php echo e($setting->address); ?></li>
                            <li><i class="flaticon-back-in-time"></i><?php echo e($setting->working_day); ?></li>
                        </ul>
                    </div>
                    <div class="top-right">
                        <ul class="social-icon-one">
                            <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                            <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                            <li><a href="#"><span class="fab fa-skype"></span></a></li>
                            <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>



        <div class="header-lower">
            <div class="auto-container">

                <div class="main-box">
                    <div class="logo-box">
                        <div class="logo"><a href="<?php echo e(route('home')); ?>"><img src="<?php echo e(asset('assets/images/logo.png')); ?>" alt="" title=""></a></div>
                    </div>


                    <div class="nav-outer">
                        <nav class="nav main-menu">
                            <ul class="navigation" id="navbar">
                                <li class="current dropdown">
                                    <a href="<?php echo e(route('home')); ?>">
                                        <span>Home</span>
                                    </a>
                                    <ul>
                                        <li class="current"><a href="index.html">Home Medical</a></li>
                                        <li><a href="index-2.html">Home Clanic</a></li>
                                        <li><a href="index-3.html">Home Dental Care</a></li>
                                        <li><a href="index-4.html">Home Eye Care</a></li>
                                        <li><a href="index-5.html">Home Prenatal care</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="<?php echo e(route('doctors')); ?>">
                                        <span>Doctors</span>
                                    </a>
                                    <ul>
                                        <li><a href="doctors.html">Doctors</a></li>
                                        <li><a href="doctor-detail.html">Doctor Detail</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="<?php echo e(route('services')); ?>">
                                        <span>Services</span>
                                    </a>
                                    <ul>
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li><a href="services.html">Services</a></li>
                                        <li><a href="services.html">Gallery</a></li>
                                        <li><a href="pricing-table.html">Pricing Table</a></li>
                                        <li><a href="elements.html">UI Elements</a></li>
                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                        <li><a href="error-page.html">Error 404</a></li>
                                        <li><a href="terms-and-condition.html">Terms and Condition</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="<?php echo e(route('departments')); ?>">
                                        <span>Departments</span>
                                    </a>
                                    <ul>
                                        <?php $__currentLoopData = $department; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li><a href="<?php echo e(url('departmentdetail').'/'.$d->id); ?>"><?php echo e($d->name); ?></a></li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a href="<?php echo e(route('news')); ?>">
                                        <span>News</span>
                                    </a>
                                    <ul>
                                        <li><a href="blog-checkboard.html">Checkerboard</a></li>
                                        <li><a href="blog-masonry.html">Masonry</a></li>
                                        <li><a href="blog-two-col.html">Two Columns</a></li>
                                        <li><a href="blog-three-col.html">Three Colums</a></li>
                                        <li><a href="blog-four-col-wide.html">Four Colums</a></li>
                                        <li class="dropdown">
                                            <span>Post Types</span>
                                            <ul>
                                                <li><a href="blog-post-image.html">Image Post</a></li>
                                                <li><a href="blog-post-gallery.html">Gallery Post</a></li>
                                                <li><a href="blog-post-link.html">Link Post</a></li>
                                                <li><a href="blog-post-audio.html">Audio Post</a></li>
                                                <li><a href="blog-post-quote.html">Quote Post</a></li>
                                                <li><a href="blog-post-video.html">Video Post</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="<?php echo e(route('events')); ?>">
                                        <span>Events</span>
                                    </a>
                                    <ul>
                                        <li><a href="shop.html">Shop</a></li>
                                        <li><a href="shop-single.html">Shop Single</a></li>
                                        <li><a href="shopping-cart.html">Shopping Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="login.html">Login</a></li>
                                    </ul>
                                </li>
                                <li><a href="<?php echo e(route('contact_us')); ?>">Contact</a></li>
                            </ul>
                        </nav>


                        <div class="outer-box">
                            <button class="search-btn"><span class="fa fa-search"></span></button>
                             <a href="appointment.html" id="appointment-btn" class="theme-btn btn-style-one"><span class="btn-title">Appointment</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="sticky-header">
            <div class="auto-container">

                <div class="main-box">
                    <div class="logo-box">
                        <div class="logo"><a href="index.html"><img src="<?php echo e(asset('assets/images/logo.png')); ?>" alt="" title=""></a></div>
                    </div>


                </div>
            </div>
        </div>


        <div class="mobile-header">
            <div class="logo"><a href="index.html"><img src="<?php echo e(asset('assets/images/logo.png')); ?>" alt="" title=""></a></div>


            <div class="nav-outer clearfix">

                <div class="outer-box">

                    <div class="search-box">
                        <button class="search-btn mobile-search-btn"><i class="flaticon-magnifying-glass"></i></button>
                    </div>

                    <a href="#nav-mobile" class="mobile-nav-toggler navbar-trigger"><span class="fa fa-bars"></span></a>
                </div>
            </div>
        </div>


        <div id="nav-mobile"></div>


        <div class="search-popup">
            <span class="search-back-drop"></span>
            <button class="close-search"><span class="fa fa-times"></span></button>

            <div class="search-inner">
                <form method="post" action="blog-showcase.html">
                    <div class="form-group">
                        <input type="search" name="search-field" value="" placeholder="Search..." required="">
                        <button type="submit"><i class="flaticon-magnifying-glass"></i></button>
                    </div>
                </form>
            </div>
        </div>

    </header>


<?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/layout/header.blade.php ENDPATH**/ ?>