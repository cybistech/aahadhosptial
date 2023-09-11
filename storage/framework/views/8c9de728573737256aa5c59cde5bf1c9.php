
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
         	 <h1><?php echo e(__('messages.news')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
                <li class="active"> <h1><?php echo e(__('messages.news')); ?></h1></li>           
             </ol>
         </div>
      </div>
   </div>
</div>
<div class="content mt-3">
   <div class="rowset row rowcenter">
      <div class="col-md-9">
         <div class="card">
            <div class="card-header">
             <strong class="card-title"><?php echo e(__('messages.news')); ?></strong>
            </div>
            <div class="card-body">
               <div id="pay-invoice">
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
                     <form action="<?php echo e(url('admin/sennews')); ?>" method="post">
                        <?php echo e(csrf_field()); ?>

                       
                       
                        <div class="form-group">
                           <label for="name" class=" form-control-label">
                            <?php echo e(__('messages.news')); ?>

                           <span class="reqfield">*</span>
                           </label>
                           <textarea class="form-control" name="news" id="news" placeholder="" required=""></textarea>
                        </div>
                        <div>
                               <?php if(Config::get("democheck.vdemo")=='1'): ?>
                                        <button type="button" onclick="return alert('This function is currently disable as it is only a demo website, in your admin it will work perfect')" class="btn btn-primary florig">
                                               <?php echo e(__('messages.save')); ?>

                                        </button>
                                     <?php else: ?>
                                           <button class="btn btn-primary florig" type="submit"> <?php echo e(__('messages.submit')); ?></button>
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
<script>
   CKEDITOR.replace('news');
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/admin/news.blade.php ENDPATH**/ ?>