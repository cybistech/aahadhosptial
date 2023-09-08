
<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Save Payment Gateway')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1><?php echo e(__('messages.Save Payment Gateway')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li>
                  <a href="<?php echo e(url('admin/paymentgateway')); ?>"><?php echo e(__('messages.Payment Gateway')); ?></a>
               </li>
               <li class="active"><?php echo e(__('messages.Save Payment Gateway')); ?></li>
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
                  <form action="<?php echo e(url('admin/updatepaymentgateway')); ?>" method="post" enctype="multipart/form-data">
                     <?php echo e(csrf_field()); ?>

                     <input type="hidden" name="id" id="id" value="<?php echo e($data->id); ?>"/>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Name')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="name" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Name')); ?>" class="form-control" required name="name" value="<?php echo e(isset($data->gateway_name)?$data->gateway_name:''); ?>">
                     </div>
                     <?php if($data->id=='2'): ?>
                      <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.merchant_key')); ?>

                        <span class="reqfield" >*</span>
                        </label>

                        <input type="text" id="merchant_key" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Key')); ?>" class="form-control"  name="merchant_key" value="<?php echo e(isset($data->merchant_key)?$data->merchant_key:''); ?>">
                     </div>
                     <?php endif; ?>
                      <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Key')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="key" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Key')); ?>" class="form-control" required name="key" value="<?php echo e(isset($data->key)?$data->key:''); ?>">
                     </div>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Secert')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="password" id="secert" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Secert')); ?>" class="form-control" required name="secert" value="<?php echo e(isset($data->secert)?$data->secert:''); ?>">
                     </div>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.mode')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <select  class="form-control"  required id="mode" name="mode">
                             <option value="test" <?= isset($data) && $data->mode == 'test' ? 'select="selected"' : "" ?> ><?php echo e(__('messages.Test')); ?></option>
                            <option value="live" <?= isset($data) && $data->mode == 'live' ? 'select="selected"' : "" ?>><?php echo e(__('messages.Live')); ?></option>
                            <option value="sandbox" <?= isset($data) && $data->mode == 'sandbox' ? 'select="selected"' : "" ?>><?php echo e(__('messages.Sandbox')); ?></option>
                        </select>
                     </div>
                     <?php if($data->image): ?>
                        <img src="<?php echo e(asset('public/upload/payment').'/'.$data->image); ?>" class="departmentimg" />
                     <?php endif; ?>
                     <input type="file" name="image" id="image"  class="form-control"/>
                     <div>
                         <?php if(Config::get("democheck.vdemo")=='1'): ?>
                           <button id="payment-button" type="button" onclick="disablebtn()" class="btn btn-lg btn-info floatright">
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
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/freakd1c/public_html/demo/singleclinic/resources/views/admin/paymentgateway/savepayment.blade.php ENDPATH**/ ?>