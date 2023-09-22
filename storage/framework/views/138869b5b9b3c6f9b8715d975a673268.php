<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">




<link href="<?php echo e(asset('assets/css/bootstrap.css')); ?>" rel="stylesheet">
<link href="<?php echo e(asset('assets/plugins/revolution/css/settings.css')); ?>" rel="stylesheet" type="text/css"><!-- REVOLUTION SETTINGS STYLES -->
<link href="<?php echo e(asset('assets/plugins/revolution/css/layers.css')); ?>" rel="stylesheet" type="text/css"><!-- REVOLUTION LAYERS STYLES -->
<link href="<?php echo e(asset('plugins/revolution/css/navigation.css')); ?>" rel="stylesheet" type="text/css"><!-- REVOLUTION NAVIGATION STYLES -->
<link href="<?php echo e(asset('assets/css/style.css')); ?>" rel="stylesheet">
<link href="<?php echo e(asset('assets/css/responsive.css')); ?>" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link id="theme-color-file" href="<?php echo e(asset('assets/css/color-themes/dodgerblue.css')); ?>" rel="stylesheet">
<link rel="shortcut icon" href="<?php echo e(asset('assets/images/favicon.png')); ?>" type="image/x-icon">
<link rel="icon" href="<?php echo e(asset('images/favicon.png')); ?>" type="image/x-icon">

    <?php
        if(isset($seo)){
            $image = $seo->image;
            $description = $seo->seo_description;
            $title= $seo->seo_title;
            // $keywords = $seo->seo_keywords;
            $type= $seo->seo_type;
         }

    ?>
<title><?php echo ucfirst($title); ?></title>
<meta name='description' itemprop='description' content='<?php echo $description; ?>'>


<meta property="og:title" content="<?php echo $title; ?>" >
<meta property="og:description" content="<?php echo $description; ?>">
<meta property="og:type" content="<?php echo e(\Request::url()); ?>" >
<meta property="og:image" content="<?php echo e($image); ?>" >
<meta property="og:url" content="<?php echo e(\Request::url()); ?>" >

<meta property="og:site_name" content="<?php echo e(\Request::url()); ?>" >
<meta property="og:locale" content="en" >

<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="<?php echo e(\Request::url()); ?>">
<meta name="twitter:title" content="<?php echo $title; ?>">
<meta name="twitter:description" content="<?php echo $description; ?>">
<meta name="twitter:image" content="<?php echo e($image); ?>">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>

<div class="page-wrapper">


    <header class="main-header header-style-one">

        <?php
            $setting=setting();
            $department=department();
        ?>

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
                            <li><a href="<?php echo e($setting->facebook_id); ?>"><span class="fab fa-facebook-f"></span></a></li>
                            <li><a href="<?php echo e($setting->instagram_id); ?>"><span class="fab fa-instagram"></span></a></li>
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
                    <?php $segment1 =  request()->segment(1);  ?>
                    <div class="nav-outer">
                        <nav class="nav main-menu" style="margin-right: 3.5rem">
                            <ul class="navigation" id="navbar">
                                <li class="<?php if($segment1==''): ?> current <?php endif; ?> dropdown">
                                    <a href="<?php echo e(route('home')); ?>">
                                        <span>Home</span>
                                    </a>
                                </li>

                                <li class="dropdown <?php if($segment1=='doctors'): ?> current <?php endif; ?> ">
                                    <a href="<?php echo e(route('doctors')); ?>">
                                        <span>Doctors</span>
                                    </a>
                                </li>

                                <li class="dropdown <?php if($segment1=='services'): ?> current <?php endif; ?>">
                                    <a href="<?php echo e(route('services')); ?>">
                                        <span>Services</span>
                                    </a>
                                    
                                </li>
                                <li class="dropdown <?php if($segment1=='departments'): ?> current <?php endif; ?>">
                                    <a href="<?php echo e(route('departments')); ?>">
                                        <span>Departments</span>
                                    </a>
                                    <ul>
                                        <?php $__currentLoopData = $department; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li><a href="<?php echo e(url('departments').'/'.$d->slug); ?>"><?php echo e($d->name); ?></a></li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </li>

                                <li class="dropdown <?php if($segment1=='news'): ?> current <?php endif; ?>">
                                    <a href="<?php echo e(route('news')); ?>">
                                        <span>News</span>
                                    </a>
                                    
                                </li>
                                <li class="dropdown <?php if($segment1=='events'): ?> current <?php endif; ?>">
                                    <a href="<?php echo e(route('events')); ?>">
                                        <span>Events</span>
                                    </a>
                                </li>
                                <li class="<?php if($segment1=='contact-us'): ?> current <?php endif; ?>"><a href="<?php echo e(route('contact_us')); ?>">Contact</a></li>
                            </ul>
                        </nav>

                        
                    </div>
                </div>
            </div>
        </div>


        <div class="sticky-header">
            <div class="auto-container">

                <div class="main-box">
                    <div class="logo-box">
                        <div class="logo"><a href="<?php echo e(route('home')); ?>"><img src="<?php echo e(asset('assets/images/logo.png')); ?>" alt="" title=""></a></div>
                    </div>


                </div>
            </div>
        </div>


        <div class="mobile-header">
            <div class="logo"><a href="<?php echo e(route('home')); ?>"><img src="<?php echo e(asset('assets/images/logo.png')); ?>" alt="" title=""></a></div>


            <div class="nav-outer clearfix">

                <div class="outer-box">

                    

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