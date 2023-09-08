
<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Help Package')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<?php $res_curr=explode("-",$setting->currency);?>
   <div class="pricingpg-main-box">
		<div class="container">
			<div class="global-heading">
				<h2><?php echo e(__('messages.Help Package')); ?></h2>
				<p><?php echo e(__("messages.The easiest way to keep life on track")); ?></p>
			</div>
			<div class="facility-main-box">

				<div class="pricing-main-box pricingpg-part-main-box">
					<div class="container">
						<div class="pricing-part-main-box">
							<div class="row">
								<?php $__currentLoopData = $pricing; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								  <div class="col-md-4">
									<div class="pricing-all-content">
										<div class="pricing-part-box">
											<h3><?php echo e($p->name); ?></h3>
											<div class="pricing-cost">
												<h3><?php echo e($res_curr[1]); ?></h3>
												<span><?php echo e($p->price); ?></span>
												<h6><i>/Session</i></h6>
											</div>
											<p><?php echo e($p->description); ?></p>
										</div>
										<div class="pricing-part-btn">
											<a class="btn" href="<?php echo e(url('subscription').'/'.$p->id); ?>"><?php echo e(__('messages.Order now')); ?></a>
										</div>
									</div>
								  </div>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</div>
						</div>
					</div>
				</div>

				<div class="pricingpg-des-box">
					<div class="d-detail-main-box">
						<div class="global-part-heading global-heading">
							<h3><?php echo e(__('messages.Additional Information')); ?></h3>
							<p><?php echo e(__("messages.a1")); ?></p>
							<p><?php echo e(__("messages.a2")); ?></p>
						</div>
					</div>
				</div>

				<div class="pricingpg-departmentlist-main-box">
					<div class="global-heading">
						<h2><?php echo e(__('messages.Department')); ?></h2>
						<p><?php echo e(__('messages.Goodness and hard work are rewarded with respect')); ?></p>
					</div>
					<div class="department-part-main-box">
						<div class="row">
						    <?php $i=0;?>
							<?php if(count($department)>0): ?>
								<?php $__currentLoopData = $department; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<?php if($i<=7): ?>
								  <div class="col-lg-3 col-md-4 col-sm-6">
									<div class="department-part-box">
										<div class="department-part-img">
											<img src="<?php echo e(asset('public/upload/department').'/'.$d->image); ?>">
										</div>
										<div class="text-detail-box">
											<h4><?php echo e($d->name); ?></h4>
											<p><?php echo e(substr($d->description,0,75)); ?></p>
										</div>
										<div class="department-viewd-btn services-btn-main-box">
											<a href="<?php echo e(url('departmentdetail').'/'.$d->id); ?>"><?php echo e(__('messages.View Detail')); ?></a>
										</div>
									</div>
								  </div>
								  <?php endif; ?>
								  <?php $i++?>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							<?php endif; ?>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	
<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/freakd1c/public_html/demo/singleclinic/resources/views/front/pricing.blade.php ENDPATH**/ ?>