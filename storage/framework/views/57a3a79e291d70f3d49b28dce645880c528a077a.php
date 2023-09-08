<!doctype html>
<html class="no-js" lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title id="changeunreadcount"><?php echo $__env->yieldContent('title'); ?></title>
       <?php echo $__env->yieldContent("meta_title"); ?>
      <meta name="description" content="<?php echo e(__('messages.meta_description_admin')); ?>">
      <meta name="title" content="<?php echo e(__('messages.meta_title_admin')); ?>">
      <meta name="viewport" content="width=device-width, initial-scale=1">
    	<meta property="og:type" content="website"/>
      <meta property="og:url" content="<?php echo e(url('/')); ?>"/>
      <meta property="og:title" content="<?php echo e(__('messages.site name')); ?>"/>
      <meta property="og:image" content="<?php echo e(asset('public/App_icon_new.png')); ?>"/>
      <meta property="og:image:width" content="250px"/>
      <meta property="og:image:height" content="250px"/>
      <meta property="og:site_name" content="<?php echo e(__('messages.site name')); ?>"/>
      <meta property="og:description" content="<?php echo e(__('messages.meta_description_admin')); ?>"/>
      <meta property="og:keyword" content="<?php echo e(__('messages.meta_keyword')); ?>"/>
      <link rel="shortcut icon" href="<?php echo e(asset('public/App_icon_new.png')); ?>">
      <link rel="stylesheet" href="<?php echo e(asset('public/adesign/vendors/bootstrap/dist/css/bootstrap.min.css')); ?>">
      <link rel="stylesheet" href="<?php echo e(asset('public/adesign/vendors/font-awesome/css/font-awesome.min.css')); ?>">
      <link rel="stylesheet" href="<?php echo e(asset('public/adesign/vendors/themify-icons/css/themify-icons.css')); ?>">
      <link rel="stylesheet" href="<?php echo e(asset('public/adesign/vendors/flag-icon-css/css/flag-icon.min.css')); ?>">
      <link rel="stylesheet" href="<?php echo e(asset('public/adesign/vendors/selectFX/css/cs-skin-elastic.css')); ?>">
      <link rel="stylesheet" href="<?php echo e(asset('public/adesign/vendors/jqvmap/dist/jqvmap.min.css')); ?>">
       <?php if(Session::get("is_rtl")==""||Session::get("is_rtl")=='1'): ?>
      <link rel="stylesheet" href="<?php echo e(asset('public/adesign/assets/css/style.css?v=9560')); ?>">
      <?php else: ?>
      <link rel="stylesheet" href="<?php echo e(asset('public/adesign/assets/css/rtl.css?v=dfgdgfd')); ?>">
      <?php endif; ?>
      <link href="<?php echo e(asset('public/fileupload/dist/css/jquery.dm-uploader.min.css')); ?>" rel="stylesheet">
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
   
       <link rel="stylesheet" href="<?php echo e(asset('public/front/css/app.min.css?v=134')); ?>">
      <input type="hidden" id="authid" value="<?php echo e(Auth::id()); ?>">
 
 
 
      <?php echo $__env->yieldContent('header'); ?>
   </head>
   <body onload="gettimezone()">
       <?php echo $__env->make('front.firebase_config', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div id="overlaychk">
                        <div class="cv-spinner">
                           <span class="spinner"></span>
                        </div>
                     </div>
       <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-md" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="mediumModalLabel"><?php echo e(__('messages.Reschedule').' '.__('messages.Appointment')); ?></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="<?php echo e(url('doctor/apmreschedule')); ?>" method="post">
                                    <?php echo e(csrf_field()); ?>

                                 <input type="hidden" name="app_id" id="app_id">
                                 <input type="hidden" name="status" id="status" value="2">
                                    <div class="form-group">
                                       <label><?php echo e(__('messages.date')); ?><span class="reqfield">*</span></label>
                                       <input type="date" class="form-control" name="date"  id="date" required placeholder="<?php echo e(__('messages.Enter').' '.__('messages.date')); ?>" min='<?=date('Y-m-d')?>'value="">
                                    </div>
                                     <div class="form-group">
                                       <label><?php echo e(__('messages.time')); ?><span class="reqfield">*</span></label>
                                       <input type="time" required class="form-control" name="time"  id="time" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.time')); ?>" value="">
                                    </div>
                                     <div class="form-group">
                                       <label><?php echo e(__('messages.Description')); ?><span class="reqfield">*</span></label>
                                       <textarea required class="form-control" name="description"  id="description"></textarea>
                                    </div>
                               
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('messages.Cancel')); ?></button>
                                <button type="submit" class="btn btn-primary"><?php echo e(__('messages.Save')); ?></button>
                            </div>
                        </div>
                         </form>
                    </div>
                </div>
                   <div class="modal fade" id="referrModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-md" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="mediumModalLabel"><?php echo e(__('messages.Refer Doctor').' '.__('messages.Appointment')); ?></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="<?php echo e(url('doctor/apmrefer')); ?>" method="post">
                                    <?php echo e(csrf_field()); ?>

                                 <input type="hidden" name="app_id" id="appoint_id">
                                 <input type="hidden" name="status" id="status" value="5">
                                 <div class="form-group">
                                       <label><?php echo e(__('messages.select doctor')); ?><span class="reqfield">*</span></label>
                                      <select class="form-control" name="refer_id"  id="refer_id" required >
                                          
                                      </select>
                                    </div>
                                    <div class="form-group">
                                       <label><?php echo e(__('messages.date')); ?><span class="reqfield">*</span></label>
                                       <input type="date" class="form-control" name="date"  id="date" required placeholder="<?php echo e(__('messages.Enter').' '.__('messages.date')); ?>" min='<?=date('Y-m-d')?>'value="">
                                    </div>
                                     <div class="form-group">
                                       <label><?php echo e(__('messages.time')); ?><span class="reqfield">*</span></label>
                                       <input type="time" required class="form-control" name="time"  id="time" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.time')); ?>" value="">
                                    </div>
                                     <div class="form-group">
                                       <label><?php echo e(__('messages.Description')); ?><span class="reqfield">*</span></label>
                                       <textarea required class="form-control" name="description"  id="description"></textarea>
                                    </div>
                               
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('messages.Cancel')); ?></button>
                                <button type="submit" class="btn btn-primary"><?php echo e(__('messages.Save')); ?></button>
                            </div>
                        </div>
                         </form>
                    </div>
                </div>
      <aside id="left-panel" class="left-panel">
         <nav class="navbar navbar-expand-sm navbar-default">
            <div class="navbar-header">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
               <i class="fa fa-bars"></i>
               </button>
               <a class="navbar-brand" href="<?php echo e(url('admin/dashboard')); ?>"><?php echo e(__('messages.Clinic')); ?></a>
               <a class="navbar-brand hidden" href="<?php echo e(url('admin/dashboard')); ?>"><?php echo e(__('messages.shortcode')); ?></a>
            </div>
            <div id="main-menu" class="main-menu collapse navbar-collapse ">
               <ul class="nav navbar-nav">
                  <li class="active">
                     <a href="<?php echo e(url('doctor/dashboard')); ?>"> <i class="menu-icon fa fa-dashboard"></i><?php echo e(__('messages.Dashboard')); ?> </a>
                  </li>
                  <li class="active">
                     <a href="<?php echo e(url('doctor/chat')); ?>"> <i class="menu-icon fa fa-comment"></i><?php echo e(__('messages.Chat')); ?> </a>
                  </li>
                  <li class="active">
                     <a href="<?php echo e(url('doctor/editprofile/1')); ?>"> <i class="menu-icon fa fa-edit"></i><?php echo e(__('messages.Edit profile')); ?> </a>
                  </li>
                  <li class="active">
                     <a href="<?php echo e(url('doctor/appointment')); ?>"> <i class="menu-icon fa fa-calendar"></i><?php echo e(__('messages.Appointment')); ?> </a>
                  </li>
                  <li class="active">
                     <a href="<?php echo e(url('doctor/review')); ?>"> <i class="menu-icon fa fa-star"></i><?php echo e(__('messages.Review')); ?> </a>
                  </li>
                  
               </ul>
            </div>
         </nav>
      </aside>
      <div id="right-panel" class="right-panel">
         <header id="header" class="header">
            <div class="header-menu">
               <div class="col-sm-7">
                  <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                  <div class="header-left">
                  </div>
               </div>
               <div class="col-sm-5">
                  <div class="user-area dropdown float-right">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <img class="user-avatar rounded-circle" src="<?php echo e(Session::get('profile_pic')); ?>"  alt="User Avatar">
                     </a>
                     <div class="user-menu dropdown-menu">
                         <!-- <a class="nav-link" href="<?php echo e(url('doctor/changepassword')); ?>"><i class="fa fa-user"></i> <?php echo e(__('messages.Change password')); ?></a>  -->                      
                         <a class="nav-link" href="javascript:logout()"><i class="fa fa-power-off"></i> <?php echo e(__('messages.Logout')); ?></a>
                     </div>
                  </div>
               </div>
            </div>
         </header>
         <?php echo $__env->yieldContent('content'); ?> 
      </div>
      <div id="chat_new" class="modal" >
                <div class="modal-dialog modal-md modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title"><?php echo e(__('messages.Search')); ?></h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                        	<div class="input-group">
                                <input type="text" class="form-control search border-right-0 transparent-bg pr-0" id="search-contact1" placeholder="Search users...">
                                    <div class="input-group-append">
                                        <div class="input-group-text transparent-bg border-left-0" role="button">
                                            <svg class="hw-20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                                            </svg>
                                        </div>
                                    </div>
                            </div>
                            <div class="sidebar-body" id="chatsidebar1">
                                <ul class="user-list" id="userchatlistall" style="padding: 15px;list-style: none;height: 375px;overflow-y: auto;">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      <!-- <div class="notification">
        <section class="logo">
            <div id="face" >
                <img id="notificationimg" src="<?php echo e(asset('public/upload/profile/profile.png')); ?>" style="width: 80px;height: 80px">
            </div>
        </section>
        <section class="body">
            <span class="title">Success</span>
            <p class="message">Your change was made</p>
        </section>
    </div>--> 
     
      <input type="hidden" id="siteurl" value="<?php echo e(url('/')); ?>" />
      <input type="hidden" id="current_user" value="<?php echo e(Auth::user()->name); ?>">
      <input type="hidden" id="doctor_url" value="<?php echo e(url('doctor')); ?>" />
      <input type="hidden" id="own_url" value="<?php echo e(url('doctor')); ?>" />
      <input type="hidden" id="currentusername" value="<?php echo e(Auth::user()->name); ?>">
      <input type="hidden" id="mycurrentuser" value="<?php echo e(Auth::user()->user_id); ?>">
      <input type="hidden" id="authprofile" value="<?php echo e(Session::get('profile_pic_path')); ?>">
      <input type="hidden" id="usertype" value="<?php echo e(Auth::user()->usertype); ?>">
      <input type="hidden" id="soundnotify" value="<?php echo e(asset('public/sound/notification/beltekpar.mp3')); ?>">
      <input type="hidden" id="delete_msg" value="<?php echo e(__('messages.Are sure want to delete this row')); ?>"/>
      <input type="hidden" id="samepwd" value="<?php echo e(__('messages.New password and Re enter password must be same')); ?>">
      <input type="hidden" id="incorrectpwd" value="<?php echo e(__('messages.Please Enter Correct Password')); ?>">
      <input type="hidden" id="invaildimg" value="<?php echo e(__('messages.Image Size Invaild')); ?>">
      <input type="hidden" id="chkworkingtime" value="<?php echo e(__('messages.Please Check You Working Time')); ?>"/>
      <input type="hidden" id="seldate" value="<?php echo e(__('messages.Please Select Date')); ?>">
         <script type="text/javascript" src="<?php echo e(asset('public/ckeditor/ckeditor.js')); ?>"></script>
       <script type="text/javascript" src="<?php echo e(asset('public/js/script.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/jquery/dist/jquery.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/popper.js/dist/umd/popper.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/bootstrap/dist/js/bootstrap.min.js')); ?>"></script>
      

      <script src="<?php echo e(asset('public/adesign/assets/js/main.js')); ?>"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/datatables.net/js/jquery.dataTables.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/datatables.net-buttons/js/dataTables.buttons.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/jszip/dist/jszip.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/pdfmake/build/pdfmake.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/pdfmake/build/vfs_fonts.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/datatables.net-buttons/js/buttons.html5.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/datatables.net-buttons/js/buttons.print.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/adesign/vendors/datatables.net-buttons/js/buttons.colVis.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/fileupload/dist/js/jquery.dm-uploader.min.js')); ?>"></script>
      <script src="<?php echo e(asset('public/fileupload/demo/demo-ui.js')); ?>"></script>
      <script src="<?php echo e(asset('public/fileupload/demo/demo-config.js?v=296')); ?>"></script>
      <script src="https://cdn.jsdelivr.net/npm/@joeattardi/emoji-button@3.0.3/dist/index.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
     
      <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment-timezone/0.5.23/moment-timezone-with-data-2012-2022.min.js"></script>
      
      
      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
     
        <script src="<?php echo e(asset('public/js/admin.js?v=1354')); ?>"></script>
         <?php echo $__env->yieldContent('footer'); ?>
   </body>

</html><?php /**PATH /home/vishal8589/public_html/demo/singleclinic/resources/views/doctor/layout.blade.php ENDPATH**/ ?>