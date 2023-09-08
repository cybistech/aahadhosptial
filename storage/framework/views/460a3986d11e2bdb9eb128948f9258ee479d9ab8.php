
<?php $__env->startSection('title'); ?>
<?php echo e(__("messages.Privecy")); ?>| Admin Dashboard
<?php $__env->stopSection(); ?>
<?php $__env->startSection('meta-data'); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<style>
    td.dataTables_empty {
    font-size: medium;
    font-weight: 600;
}
</style>
<div class="main-content">
  <div class="page-content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
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
              <h4><?php echo e(__("messages.Privecy")); ?></h4>
                <div class="content mt-3">
                  <div class="animated">
                    <div class="col-sm-12">
                      <div class="modal-content">
                        <div class="modal-content">
                          <div class="modal-header">
                             <h6 class="modal-title"><?php echo e(url('Privacy-Policy')); ?></h6>
                              <a href= "<?php echo e(url('Privacy-Policy')); ?>" class="btn btn-md btn-success" value="Visit" target="#"  style="float:right; color:white !important">Visit</a>
                            
                          </div>
                          <div class="modal-body">
                            <form action="<?php echo e(url('admin/edit_app_privacy')); ?>" method="post" enctype="multipart/form-data">
                              <?php echo e(csrf_field()); ?> 
                              <div class="form-group">
                                
                                <input type="hidden" class="form-control" id="id" name="id" required="" value="<?php echo e(isset($data->id)?$data->id:0); ?>">

                                <textarea class="form-control" name="privacy"><?php echo e(isset($data->privacy)?$data->privacy:''); ?></textarea>
                                
                              </div>
                              <?php if(Session::get("is_demo")=='1'): ?>
                                  <button type="button" onclick="disablebtn()" class="btn btn-success"><?php echo e(__('messages.Submit')); ?></button>
                              <?php else: ?>
                                   <button  class="btn btn-success" type="submit" value="Submit"><?php echo e(__("messages.Submit")); ?></button>
                              <?php endif; ?>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>          
            </div>
          </div>
        </div> 
      </div> 
    </div> 
  </div>
</div>

<script src="<?php echo e(asset('public/js/vendor/jquery-2.1.4.min.js')); ?>"></script>
 <script src="<?php echo e(asset('public/ckeditor/ckeditor.js')); ?>"></script>
  <script type="text/javascript">
    $(document).ready(function () 
      {
          CKEDITOR.replace('privacy');
      });
  </script>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/freakd1c/public_html/demo/singleclinic/resources/views/admin/privecy-app.blade.php ENDPATH**/ ?>