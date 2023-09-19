<?php $__env->startSection('title'); ?>
 <?php echo e(__("messages.Privacy Policy")); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('main.container'); ?>
    <section class="page-title" style="background-image: url(<?php echo e(asset('upload/department/department.jpg')); ?>);">
        <div class="auto-container">
            <div class="title-outer">
                <h1>Privacy Policy</h1>
                <ul class="page-breadcrumb">
                    <li><a href="<?php echo e(route('news')); ?>">Home</a></li>
                    <li>Privacy Policy</li>
                </ul>
            </div>
        </div>
    </section>

    <div style="margin: 5rem;">
        <?php echo $setting->privacy_policy; ?>

    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/privacypolicy.blade.php ENDPATH**/ ?>