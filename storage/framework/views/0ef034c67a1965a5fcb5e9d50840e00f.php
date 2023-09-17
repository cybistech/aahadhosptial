<?php $__env->startSection('title'); ?>
 <?php echo e(__('messages.Department')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('main.container'); ?>


<section class="page-title" style="background-image: url(<?php echo e(asset('upload/department/department.jpg')); ?>);">
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


<section class="services-section-two">
    <div class="auto-container">
        <div class="carousel-outer">
            <div class="row">
                <?php if(count($departments)>0): ?>
                    <?php $__currentLoopData = $departments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $__env->make('front.components.department', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </div>
            <?php echo e($departments->links()); ?>

        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/department.blade.php ENDPATH**/ ?>