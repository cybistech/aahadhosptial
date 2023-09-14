<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Save News')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1><?php echo e(__('messages.Save News')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li><a href="<?php echo e(url('admin/department')); ?>"><?php echo e(__('messages.News')); ?></a></li>
               <li class="active"><?php echo e(__('messages.Save News')); ?></li>
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
                  <form action="<?php echo e(url('admin/updatenews')); ?>" method="post" novalidate="novalidate" enctype="multipart/form-data">
                     <?php echo csrf_field(); ?>
                     <input type="hidden" name="id" id="id" value="<?php echo e($news_id); ?>"/>
                     <input type="hidden" name="featured_image" id="featured_image" value="<?php echo e(isset($data->featured_image)?$data->featured_image:''); ?>"/>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Title')); ?>

                        <span class="reqfield">*</span>
                        </label>
                        <input type="text" id="title" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.News Title')); ?>" class="form-control" required name="title" value="<?php echo e(isset($data->title)?$data->title:''); ?>">
                     </div>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Meta Description')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="meta_description" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Meta Description')); ?>" class="form-control" required name="meta_description" value="<?php echo e(isset($data->meta_description)?$data->meta_description:''); ?>">
                     </div>

                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Meta Tags')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="meta_tags" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Meta Tags')); ?>" class="form-control" required name="meta_tags" value="<?php echo e(isset($data->meta_tags)?$data->meta_tags:''); ?>">
                     </div>

                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Excerpt')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="excerpt" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Excerpt')); ?>" class="form-control" required name="excerpt" value="<?php echo e(isset($data->excerpt)?$data->excerpt:''); ?>">
                     </div>

                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Content')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="contents" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Content')); ?>" class="form-control" required name="contents" value="<?php echo e(isset($data->contents)?$data->contents:''); ?>">
                     </div>

                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('messages.Tags')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="tags" placeholder="<?php echo e(__('messages.Enter').' '.__('messages.Tags')); ?>" class="form-control" required name="tags" value="<?php echo e(isset($data->tags)?$data->tags:''); ?>">
                     </div>
                     <div class="form-group">
                        <label for="file" class=" form-control-label">
                        <?php echo e(__('messages.Image')); ?><span class="reqfield" >*</span>
                        </label>
                        <?php if($news_id!=0): ?>
                        <img src="<?php echo e(asset('upload/news').'/'.$data->featured_image); ?>"  class="imgsize1 departmentimg"/>
                        <?php endif; ?>
                        <div>
                           <input type="file" id="file" name="featured_image" class="form-control-file" accept="image/*">
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        <?php echo e(__('Status')); ?>

                        <span class="reqfield" >*</span>
                        </label>
                        <select name="status" id="status" class="form-control">
                            <option value="publish" <?php echo e(old('status' == "publish" ? 'selected' : '')); ?>><?php echo e(__('Publish')); ?></option>
                            <option value="draft"   <?php echo e(old('status' == "draft" ? 'selected' : '')); ?>><?php echo e(__('Draft')); ?></option>
                        </select>
                    </div>
                     <div>
                        
                            <button id="payment-button" type="submit" class="btn btn-lg btn-info" >
                              <?php echo e(__('messages.Submit')); ?>

                              </button>
                        

                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/admin/news/savenews.blade.php ENDPATH**/ ?>