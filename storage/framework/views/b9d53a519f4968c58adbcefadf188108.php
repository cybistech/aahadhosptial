<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Update Profile')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1><?php echo e(__('messages.Update Profile')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li class="active"><?php echo e(__('messages.Update Profile')); ?></li>
            </ol>
         </div>
      </div>
   </div>
</div>
<div class="content mt-3">
   <div class="row rowset rowcenter">
      <div class="col-lg-6">
         <div class="card">
            <div class="card-body">
               <div id="pay-invoice">
                  <div class="card-body">
                     <?php if(Session::get("message")): ?>
                     <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
                        <?php echo e(Session::get("message")); ?>

                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                        </button>
                     </div>
                     <?php endif; ?>
                     <?php if(Session::get("message1")): ?>
                     <div class="sufee-alert alert with-close alert-danger alert-dismissible fade show">
                        <?php echo e(Session::get("message1")); ?>

                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                        </button>
                     </div>
                     <?php endif; ?>
                     <form action="<?php echo e(url('admin/updateprofile')); ?>" method="post"  enctype="multipart/form-data">
                        <?php echo e(csrf_field()); ?>

                        <div class="form-group">
                           <label for="name" class=" form-control-label">
                           <?php echo e(__('messages.Name')); ?>

                           <span class="reqfield" >*</span>
                           </label>
                           <input type="text" id="name" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Name')); ?>" class="form-control" required name="name" value="<?php echo e(Auth::user()->name); ?>">
                        </div>
                        <div class="form-group">
                           <label for="email" class=" form-control-label">
                           <?php echo e(__('messages.Email')); ?>

                           </label>
                           <input type="text" required id="email" name="email" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Email')); ?>" readonly class="form-control" value="<?php echo e(Auth::user()->email); ?>">
                        </div>
                        <div class="form-group">
                           <label for="file" class=" form-control-label">
                           <?php echo e(__('messages.Profile Picture')); ?>

                           </label>
                           <img src="<?php echo e(asset('upload/profile/'.Auth::user()->profile_pic)); ?>" class="imgsize1" />
                           <div>
                              <input type="file" id="file" name="image" class="form-control-file">
                           </div>
                        </div>
                        <div>
                            
                              <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                  <?php echo e(__('messages.Save')); ?>

                              </button>
                           

                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/admin/updateprofile.blade.php ENDPATH**/ ?>