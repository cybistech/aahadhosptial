<?php $__env->startSection('main.container'); ?>

 <section class="page-title" style="background-image: url(<?php echo e(asset('upload/department/department.jpg')); ?>);">
    <div class="auto-container">
        <div class="title-outer">
            <h1><?php echo e($doctor->name); ?></h1>
            <ul class="page-breadcrumb">
                <li><a href="<?php echo e(route('home')); ?>">Home</a></li>
                <li><a href="<?php echo e(route('doctors')); ?>">Doctors</a></li>
                <li><?php echo e($doctor->name); ?></li>
            </ul>
        </div>
    </div>
</section>
 <!-- Doctor Detail Section -->
 <section class="doctor-detail-section">
    <div class="auto-container">
        <div class="row">

            <div class="content-side col-lg-8 col-md-12 col-sm-12 order-2">
                <div class="docter-detail">
                    <h3 class="name"><?php echo e($doctor->name); ?></h3>
                    
                    <div class="text"><?php echo $doctor->about_us; ?></div>
                    <ul class="doctor-info-list">
                        <li>
                            <strong>Speciality</strong>
                            <p><?php echo e(isset($doctor->department)?$doctor->department->name:""); ?></p>
                        </li>
                        
                        <li>
                            <strong>Services</strong>
                            <p><?php echo $doctor->service; ?></p>
                        </li>
                        
                        <li>
                            <strong>Timing</strong>
                            <p><?php echo e($doctor->working_hour); ?></p>
                        </li>
                        <li>
                            <strong>Phone</strong>
                            <p><a href="#"><?php echo e($doctor->phone_no); ?></a></p>
                        </li>
                        <li>
                            <strong>Email</strong>
                            <p><a href="#"><?php echo e($doctor->email); ?></a></p>
                        </li>
                        
                    </ul>
                </div>
            </div>

            <!-- Sidebar Side -->
            <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                <div class="sidebar">
                    <div class="team-block wow fadeInUp">
                        <div class="inner-box">
                            <?php if ($doctor->image) {
                                $image = asset('upload/doctor') . "/" . $doctor->image;
                                } else {
                                $image = asset('upload/profile/profile.png');
                                }
                            ?>
                            <figure class="image"><img src="<?php echo e($image); ?>" alt="<?php echo e($doctor->name); ?>"></figure>
                            <ul class="social-links">
                                <li><a href="#"><span class="fab fa-facebook"></span></a></li>
                                <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                <li><a href="#"><span class="fab fa-pinterest"></span></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="docter-availability">
                        <div class="inner">
                            <div class="sec-title">
                                <h2>Availability</h2>
                                <span class="divider"></span>
                                <div class="text">Suspendisse potenti. Maecenas dapibus ac tellus sed pulvinar. Vestibulum bib volutpat accumsan non laoreet nulla luctus.</div>
                            </div>
                            <ul class="timing-list-two">
                                <?php $arr = [__('messages.Monday'), __('messages.Tuesday'), __('messages.Wednesday'), __('messages.Thursday'), __('messages.Friday'), __('messages.Saturday'), __('messages.Sunday')]; ?>
                                <?php
                                    $weekdays = [];
                                    $weekend = [];
                                    $isWeekdaysSame = true;
                                    $weekdaysTimetable = "";

                                    foreach ($arr as $index => $day) {
                                        if (isset($doctor->TimeTabledata[$index])) {
                                            $timetable = $doctor->TimeTabledata[$index];
                                            if (!is_null($timetable->from) && !is_null($timetable->to)) {
                                                $formattedTime = date_format(date_create($timetable->from), "H:i") . ' - ' . date_format(date_create($timetable->to), "H:i");
                                            }
                                            else {
                                                $formattedTime = 'OFF';
                                            }
                                            if ($index < 5) {
                                                $weekdays[] = "$day $formattedTime";
                                                if ($index > 0 && $weekdaysTimetable !== $formattedTime) {
                                                    $isWeekdaysSame = false;
                                                }
                                                $weekdaysTimetable = $formattedTime;
                                            } else {
                                                $weekend[] = "$day $formattedTime";
                                            }
                                        }
                                    }
                                ?>
                                <?php if(count($weekdays) === 0): ?>
                                    <p><?php echo e(__('No working hours available for weekdays')); ?></p>
                                <?php else: ?>
                                    <?php if($isWeekdaysSame): ?>
                                            <li><?php echo e(__('Monday - Friday')); ?>

                                            <?php
                                                if (!empty($weekdays) && is_array($weekdays) && count($weekdays) > 0) {
                                                    $firstWeekday = $weekdays[0];
                                                    $parts = explode(' ', $firstWeekday);
                                                    if ($parts[1]=='OFF') {
                                                        $timeRange='OFF';
                                                    }
                                                    else {
                                                        if (preg_match('/\d{2}:\d{2}\s*-\s*\d{2}:\d{2}/', $firstWeekday, $matches))
                                                        {
                                                            $timeRange = $matches[0];
                                                        }
                                                    }
                                                }
                                            ?>
                                             <span><?php echo e($timeRange); ?></span></li>
                                    <?php else: ?>
                                        <?php if(count($weekdays) > 0): ?>
                                            <?php $__currentLoopData = $weekdays; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $dayTimetable): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php
                                                    $parts = explode(' ', $dayTimetable);
                                                    $weekend_name = $parts[0];
                                                    if ($parts[1] == 'OFF') {
                                                        $timerange = $parts[1];
                                                    }
                                                    else {
                                                        $timerange = $parts[1] .  ' - ' . $parts[3];
                                                    }
                                                ?>
                                                <li><?php echo e($weekend_name); ?> <span><?php echo e($timerange); ?></span></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endif; ?>

                                <?php if(count($weekend) > 0): ?>
                                    <?php $__currentLoopData = $weekend; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $dayTimetable): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php
                                            $parts = explode(' ', $dayTimetable);
                                            $weekend_name = $parts[0];
                                            if ($parts[1] == 'OFF') {
                                                $timerange = $parts[1];
                                            }
                                            else {
                                                $timerange = $parts[1] .  ' - ' . $parts[3];
                                            }
                                        ?>
                                            <li><?php echo e($weekend_name); ?> <span><?php echo e($timerange); ?></span></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="team-section">
    <div class="auto-container">
        <div class="row">
            <?php $__currentLoopData = $doctor_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d_list): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="team-block col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                    <div class="inner-box">
                        <?php
                            if($d_list->image){
                                $image=asset('upload/doctor')."/".$d_list->image;
                            }else{
                                $image=asset('upload/profile/profile.png');
                            }
                        ?>
                            <figure class="image"><a href="<?php echo e(url('doctors/').'/'.$d_list->slug); ?>"><img src="<?php echo e($image); ?>" alt="<?php echo e($d_list->name); ?>"></a></figure>
                            <ul class="social-links">
                                <?php if(!empty($d_list->facebook_id)): ?>
                                    <li><a href="<?php echo e($d_list->facebook_id); ?>"><span class="fab fa-facebook"></span></a></li>
                                <?php endif; ?>
                                <?php if(!empty($d_list->google_id)): ?>
                                    <li><a href="<?php echo e($d_list->google_id); ?>"><span class="fab fa-google-plus-g"></span></a></li>
                                <?php endif; ?>
                                <?php if(!empty($d_list->twitter_id)): ?>
                                    <li><a href="<?php echo e($d_list->twitter_id); ?>"><span class="fab fa-twitter"></span></a></li>
                                <?php endif; ?>
                                <?php if(!empty($d_list->instagram_id)): ?>
                                    <li><a href="<?php echo e($d_list->instagram_id); ?>"><span class="fab fa-instagram"></span></a></li>
                                <?php endif; ?>
                            </ul>
                        <div class="info-box">
                            <h4 class="name"><a href="<?php echo e(url('doctors/').'/'.$d_list->slug); ?>"><?php echo e($d_list->name); ?></a></h4>
                            <span class="designation">Senior Dr. at Delmont</span>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</section>


<?php $__env->stopSection(); ?>




<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/doctordetails.blade.php ENDPATH**/ ?>