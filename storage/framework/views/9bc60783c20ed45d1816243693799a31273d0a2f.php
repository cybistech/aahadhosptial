
<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Appointment')); ?>

<?php $__env->stopSection(); ?> <?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1><?php echo e(__('messages.Appointment')); ?></h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active"><?php echo e(__('messages.Appointment')); ?></li>
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
                        <form>
                            <div class="form-group col-md-12 paddiv">
                                <div class="col-md-4">
                                    <label for="cc-payment" class="control-label mb-1">
                                        <?php echo e(__('messages.Start Date')); ?>

                                    </label>
                                    <input id="start_date" name="start_date" type="text" class="form-control" required value="<?= isset($startdate)&&$startdate!=0?$startdate:""?>">
                                </div>
                                <div class="col-md-4">
                                    <label for="cc-payment" class="control-label mb-1">
                                        <?php echo e(__('messages.End Date')); ?>

                                    </label>
                                    <input id="end_date" name="end_date" type="text" class="form-control" required value="<?= isset($enddate)&&$enddate!=0?$enddate:""?>">
                                </div>
                                <div class="col-md-4 appbtn">
                                    <button type="button" onclick="searchappointment()" name="searchbydate" class="btn btn-primary"><?php echo e(__('messages.Search')); ?></button>
                                    <button type="button" name="reset" onclick="Resetappointment()" class="btn btn-primary"><?php echo e(__('messages.Reset')); ?></button>
                                </div>
                            </div>
                        </form>
                        <div class="table-responsive">
                            <table id="service" class="table table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th><?php echo e(__('messages.Id')); ?></th>
                                        <th><?php echo e(__('messages.Department Name')); ?></th>
                                        <th><?php echo e(__('messages.Doctor Name')); ?></th>
                                        <th><?php echo e(__('messages.Service Name')); ?></th>
                                        <th><?php echo e(__('messages.Patient Name')); ?></th>
                                        <th><?php echo e(__('messages.Timing')); ?></th>
                                        <th><?php echo e(__('messages.Messages')); ?></th>
                                        <th><?php echo e(__('messages.Status')); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if(count($data)>0): ?>
                                       <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $d): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                          <tr>
                                              <td><?php echo e($d->id); ?></td>
                                              <td><?php echo e(isset($d->department)?$d->department->name:""); ?></td>
                                              <td><?php echo e(isset($d->doctors)?$d->doctors->name:""); ?></td>
                                              <td><?php echo e(isset($d->services)?$d->services->name:""); ?></td>
                                              <td><?php echo e($d->name); ?></td>
                                              <td><?php echo e($d->date.' '.$d->time); ?></td>
                                              <td><?php echo e($d->messages); ?></td>
                                              <td>
                                                  <?php if($d->status==3): ?>
                                                  <a href="javascript:void(0)" class="btn btn-primary"><?php echo e(__('messages.Approve')); ?></a>
                                                  <?php elseif($d->status==6): ?>
                                                  <a href="javascript:void(0)" class="btn btn-primary"><?php echo e(__('messages.Reject')); ?></a>
                                                  <?php elseif($d->status==0): ?>
                                                  <a href="javascript:void(0)" class="btn btn-primary"><?php echo e(__('messages.Absent')); ?></a>
                                                  <?php elseif($d->status==1): ?>
                                                  <a href="javascript:void(0)" class="btn btn-primary"><?php echo e(__('messages.Receive')); ?></a>
                                                  <?php elseif($d->status==2): ?>
                                                  <a href="javascript:void(0)" class="btn btn-primary"><?php echo e(__('messages.Reschedule')); ?></a>
                                                  <?php elseif($d->status==4): ?>
                                                  <a href="javascript:void(0)" class="btn btn-primary"><?php echo e(__('messages.Complete')); ?></a>
                                                  <?php elseif($d->status==5): ?>
                                                  <a href="javascript:void(0)" class="btn btn-primary"><?php echo e(__('messages.Refer Doctor')); ?></a>
                                                  <?php endif; ?>
                                              </td>
                                          </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                  <?php endif; ?>
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

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/vishal8589/public_html/demo/singleclinic/resources/views/admin/appointment/default.blade.php ENDPATH**/ ?>