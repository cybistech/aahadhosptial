
<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Album Photos')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1> <?php echo e(__('messages.Album Photos')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li class="active"><?php echo e(__('messages.Album Photos')); ?></li>
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
                  <div>
                     <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>" />
                     <main role="main" class="container">
                        <div class="row">
                           <div class="col-md-6 col-sm-12">
                              <div id="drag-and-drop-zone" class="dm-uploader p-5">
                                 <h3 class="mb-5 mt-5 text-muted"><?php echo e(__('messages.Drag & drop files here')); ?></h3>
                                 <div class="btn btn-primary btn-block mb-5">
                                    <span><?php echo e(__('messages.Open the file Browser')); ?></span>
                                    <input type="file" title='<?php echo e(__("messages.Click to add Files")); ?>' />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-6 col-sm-12">
                              <div class="card h-100">
                                 <div class="card-header">
                                    <?php echo e(__('messages.File List')); ?>

                                 </div>
                                 <input type="hidden" id="album_id" value="<?php echo e($album_id); ?>"/>
                                 <div id="imagediv"></div>
                                 <ul class="list-unstyled p-2 d-flex flex-column col" id="files">
                                    <li class="text-muted text-center empty"><?php echo e(__('messages.No files uploaded')); ?></li>
                                 </ul>
                                 <span id="filepath" class="is_hide"></span>
                              </div>
                           </div>
                        </div>
                     </main>
                  </div>
                  <div class="table-responsive">
                  <table id="service" class="table  table-striped table-bordered">
                     <thead>
                        <tr>
                           <th><?php echo e(__('messages.Id')); ?></th>
                           <th><?php echo e(__('messages.Image')); ?></th>
                           <th><?php echo e(__('messages.Action')); ?></th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>     
                        <tr>
                           <td><?php echo e($d->id); ?></td>
                           <td>
                              <img src="<?php echo e(asset('public/upload/gallery').'/'.$d->image); ?>" class="imgsize1 departmentimg"/>
                           </td>
                           <td>
                              
                              <a href="javascript:deleterow('deletegalleryphoto','<?= $d->id ?>')" class="btn btn-danger"><?php echo e(__('messages.Delete')); ?></a>
                           </td>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                     </tbody>
                  </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/freakd1c/public_html/demo/singleclinic/resources/views/admin/gallery/photodefault.blade.php ENDPATH**/ ?>