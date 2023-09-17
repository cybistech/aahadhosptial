<?php $__env->startSection('title'); ?>
 <?php echo e(__('Doctors')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('main.container'); ?>

<section class="page-title" style="background-image: url(<?php echo e(asset('upload/department/department.jpg')); ?>);">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Doctors</h1>
            <ul class="page-breadcrumb">
                <li><a href="<?php echo e(route('home')); ?>">Home</a></li>
                <li><a href="<?php echo e(route('doctors')); ?>">Doctors</a></li>
            </ul>
        </div>
    </div>
</section>


<section class="team-section-two alternate alternate2">
    <div class="auto-container">
        <div class="row">
            <?php if(count($doctor)>0): ?>
                <?php $__currentLoopData = $doctor; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__env->make('front.components.doctor', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </div>
        <?php echo e($doctor->links()); ?>

    </div>
</section>






<?php $__env->stopSection(); ?>


<?php echo $__env->make('front.layout.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/doctorlist.blade.php ENDPATH**/ ?>