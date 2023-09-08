
<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Save Album')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1><?php echo e(__('messages.Save Album')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
                <li><a href="<?php echo e(url('admin/gallery')); ?>"><?php echo e(__('messages.Album')); ?></a></li>
               <li class="active"><?php echo e(__('messages.Save Album')); ?></li>
            </ol>
         </div>
      </div>
   </div>
</div>
<div class="content mt-3">
   <div class="animated fadeIn">
      <div class="row rowcenter">
         <div class="col-md-9">
            <div class="card">
               <div class="card-body">
                  <?php if(Session::has('message')): ?>
                         <div class="col-sm-12">
                            <div class="alert  <?php echo e(Session::get('alert-class', 'alert-info')); ?> alert-dismissible fade show" role="alert"><?php echo e(Session::get('message')); ?>

                               <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                               <span aria-hidden="true">&times;</span>
                               </button>
                            </div>
                         </div>
                  <?php endif; ?>
                  <?php if($errors->any()): ?>
                  <div class="alert alert-danger">
                     <ul>
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li><?php echo e($error); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                     </ul>
                  </div>
                  <?php endif; ?>                              
                  <form action="<?php echo e(url('admin/updatealbum')); ?>" method="post" novalidate="novalidate">
                     <?php echo e(csrf_field()); ?>

                     <input type="hidden" name="id" id="id" value="<?php echo e($id); ?>"/>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Name')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="name" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Name')); ?>" class="form-control" required name="name" value="<?php echo e(isset($data->name)?$data->name:''); ?>">
                     </div>
                     <div>
                         <?php if(Config::get("democheck.vdemo")=='1'): ?>
                           <button id="payment-button" onclick="disablebtn()"  type="button" class="btn btn-lg btn-info floatright">
                             <?php echo e(__('messages.Submit')); ?>

                           </button>
                        <?php else: ?>
                           <button id="payment-button" type="submit" class="btn btn-lg btn-info floatright">
                            <?php echo e(__('messages.Submit')); ?>

                           </button>
                        <?php endif; ?>
                        
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/freakd1c/public_html/demo/singleclinic/resources/views/admin/gallery/savealbum.blade.php ENDPATH**/ ?>