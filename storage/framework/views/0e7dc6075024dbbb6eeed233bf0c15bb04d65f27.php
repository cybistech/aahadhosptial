
<?php $__env->startSection('title'); ?>
 <?php echo e(__('messages.Facilities')); ?> 
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
   <div class="departmentpg-main-box">
		<div class="container">
			<div class="global-heading">
				<h2><?php echo e(__('messages.Facilities')); ?></h2>
				<p><?php echo e(__('messages.The best way to predict the future is to invent it')); ?></p>
			</div>
			<div class="department-part-main-box">
				<div class="row">
					<?php if(count($facilites)>0): ?>
					<?php $i=0;?>
						<?php $__currentLoopData = $facilites; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

							<div class="col-lg-3 col-md-4 col-sm-6" data-aos="fade-right">
								<?php if($i%2==0): ?>
 							  <div class="services-part-box services-part1-box">
 							<?php else: ?>
 							  <div class="services-part-box services-part2-box">
 							<?php endif; ?>
								
									<div class="department-part-img">
										<img src="<?php echo e(asset('public/upload/service').'/'.$d->icon); ?>">
									</div>
									<div class="text-detail-box">
										<h4><?php echo e($d->name); ?></h4>
										<p><?php echo e(substr($d->description,0,100)); ?></p>
									</div>
									
								
							</div>
						</div>
						<?php $i++; ?>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
<script>
  AOS.init();
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/vishal8589/public_html/demo/singleclinic/resources/views/front/facilites.blade.php ENDPATH**/ ?>