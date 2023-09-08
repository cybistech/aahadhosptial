<?php $__env->startSection('title'); ?>
 <?php echo e(__('messages.Gallery')); ?> 
<?php $__env->stopSection(); ?>
<?php $__env->startSection('loader'); ?>
<div id="overlayer"></div>
<span class="loader"><span class="loader-inner"></span></span>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
  <div class="doctorpg-main-box">
		<div class="container">
			<div class="global-heading">
				<h2><?php echo e(__('messages.Gallery')); ?></h2>
				<p><?php echo e(__('messages.Every artist was first an amateur')); ?></p>
			</div>
			<div class="doctorpg-tab-mainbox">
			    <section class="customer-logos slider tab">
			      	<div class="slide tablinks" id="defaultOpen" onclick="openCity(event, 'all')">
			      		All
			      	</div>
			      	<?php if(count($albumlist)>0): ?>
				      	<?php $__currentLoopData = $albumlist; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $a): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				      	<div class="slide tablinks" onclick="openCity(event, '<?php echo e($a->id); ?>')">
				      		<?php echo e($a->name); ?>

				      	</div>
				       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				    <?php endif; ?>
			    </section>
			</div>
			<div id="all" class="tabcontent">
				<div class="row" data-aos-anchor-placement="top-bottom">
						   <?php $arr=array();?>
							<?php $__currentLoopData = $albumlist; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $a): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							   <?php $__currentLoopData = $a->gallerydata; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ab): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							      <?php $arr[]=$ab->image;?>
						       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							<?php 
							      if(count($arr)>0){
							      		$onecolimg=count($arr)/3;
										$onecolimg=round($onecolimg);
										$k=0;
										for ($i=1; $i < 4; $i++) { 
											echo '<div class="col-md-4">';
											for ($j=$k; $j < $onecolimg*$i ; $j++) {
											    if(isset($arr[$j])){
											    		echo '<div class="facility-part-main-box"><div class="facility-img-main-box">
													<img src="'.asset('public/upload/gallery').'/'.$arr[$j].'">
												</div></div>';
												$k=$k+1;
											    } 
												
											}
											echo "</div>";
										}
							      }
							?>
				</div>
			</div>
			<?php if(count($albumlist)>0): ?>
				<?php $__currentLoopData = $albumlist; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $a): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				    <div id="<?php echo e($a->id); ?>" class="tabcontent" >
						<div class="row" data-aos-anchor-placement="top-bottom">
									<?php $arr=array();?>
									 <?php $__currentLoopData = $a->gallerydata; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ab): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<?php $arr[]=$ab->image;?>
									<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
									<?php 
							      if(count($arr)>0){
							      		$onecolimg=count($arr)/3;
										$onecolimg=round($onecolimg);
										$k=0;
										for ($i=1; $i < 4; $i++) { 
											echo '<div class="col-md-4">';
											for ($j=$k; $j < $onecolimg*$i ; $j++) {
											    if(isset($arr[$j])){
											    		echo '<div class="facility-part-main-box"><div class="facility-img-main-box">
													<img src="'.asset('public/upload/gallery').'/'.$arr[$j].'">
												</div></div>';
												$k=$k+1;
											    } 
												
											}
											echo "</div>";
										}
							      }
							?>
						</div>
					</div>
				 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			<?php endif; ?>
			</div>
		</div>
	</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/freaktemplate/public_html/demo/singleclinic/resources/views/front/gallery.blade.php ENDPATH**/ ?>