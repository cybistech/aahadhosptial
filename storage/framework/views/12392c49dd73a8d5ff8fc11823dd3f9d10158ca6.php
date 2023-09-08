
<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Change password')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1><?php echo e(__('messages.Change password')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li class="active"><?php echo e(__('messages.Change password')); ?></li>
            </ol>
         </div>
      </div>
   </div>
</div>
<div class="content mt-3">
   <div class="row rowset rowcenter">
      <div class="col-lg-6">
         <div class="card">
            <div class="card-header">
               <strong class="card-title"><?php echo e(__('messages.Change password')); ?></strong>
            </div>
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
                     <form action="<?php echo e(url('admin/updatepassword')); ?>" method="post"   enctype="multipart/form-data">
                        <?php echo e(csrf_field()); ?>                                           
                        <div class="form-group">
                           <label for="name" class=" form-control-label">
                           <?php echo e(__('messages.Enter Current Password')); ?>

                           <span class="reqfield">*</span>
                           </label>
                           <input type="password" id="cpwd" placeholder="<?php echo e(__('messages.Enter Current Password')); ?>" class="form-control" name="cpwd" required="" onchange="checkcurrentpwdtest(this.value)" >
                        </div>
                        <div class="form-group">
                           <label for="name" class=" form-control-label">
                           <?php echo e(__('messages.Enter New Password')); ?>

                           <span class="reqfield">*</span>
                           </label>
                           <input type="password" id="npwd" placeholder="<?php echo e(__('messages.Enter New Password')); ?>" class="form-control" name="npwd" required="" >
                        </div>
                        <div class="form-group">
                           <label for="name" class=" form-control-label">
                           <?php echo e(__('messages.Re-enter New Password')); ?>

                           <span class="reqfield">*</span>
                           </label>
                           <input type="password" id="rpwd" placeholder="<?php echo e(__('messages.Re-enter New Password')); ?>" class="form-control" name="rpwd" onchange="changecheckboth(this.value)" required="">
                        </div>
                        <div class="form-group">
                            <?php if(Config::get("democheck.vdemo")=='1'): ?>
                              <button type="button" onclick="disablebtn()" class="btn btn-success btn-flat m-b-30 m-t-30"><?php echo e(__('messages.Save')); ?></button>
                           <?php else: ?>
                               <button id="payment-button" type="submit" class="btn btn-lg btn-info btn-block">
                                   <?php echo e(__('messages.Save')); ?>

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
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/freakd1c/public_html/demo/singleclinic/resources/views/admin/changepassword.blade.php ENDPATH**/ ?>