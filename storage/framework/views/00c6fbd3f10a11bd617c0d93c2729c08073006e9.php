
<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Notification')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1><?php echo e(__('messages.Notification')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li class="active"><?php echo e(__('messages.Notification')); ?></li>
            </ol>
         </div>
      </div>
   </div>
</div>
<div class="content mt-3">
   <div class="animated fadeIn">
      <div class="row">
         <div class="col-md-12">
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
                  <div>
                     <a href="<?php echo e(url('admin/savenotification')); ?>" class="btn btn-primary" data-toggle="modal" data-target="#myModal"><?php echo e(__('messages.Send Notification')); ?></a>
                  </div>
                  <div class="table-responsive">
                  <table id="service" class="table  table-striped table-bordered">
                     <thead>
                        <tr>
                           <th><?php echo e(__('messages.Id')); ?></th>
                           <th><?php echo e(__('messages.Messages')); ?></th>
                        </tr>
                     </thead>
                     <tbody>                                        
                     </tbody>
                  </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="modal fade" id="myModal" role="dialog">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title"><?php echo e(__('messages.Send Notification')); ?>

               </h5>
               <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
               <form name="menu_form_category" action="<?php echo e(url('admin/savenotification')); ?>" method="post">
                  <?php echo e(csrf_field()); ?>

                  <div class="form-group">
                     <label><?php echo e(__('messages.Messages')); ?></label>
                     <textarea class="form-control" name="message" required>
                     </textarea>
                  </div>
                  <div class="col-md-12">
                     <div class="col-md-6">
                        <input id="payment-button" type="submit" class="btn btn-primary btn-md form-control" value="<?php echo e(__('messages.Save')); ?>">
                     </div>
                     <div class="col-md-6">
                         <?php if(Config::get("democheck.vdemo")=='1'): ?>
                          <input type="button" onclick="disablebtn()" class="btn btn-secondary btn-md form-control" data-dismiss="modal" value="<?php echo e(__('messages.Close')); ?>">
                        <?php else: ?>
                          <input type="button" class="btn btn-secondary btn-md form-control" data-dismiss="modal" value="<?php echo e(__('messages.Close')); ?>">
                        <?php endif; ?>                        
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/freaktemplate/public_html/demo/singleclinic/resources/views/admin/setting/notification.blade.php ENDPATH**/ ?>