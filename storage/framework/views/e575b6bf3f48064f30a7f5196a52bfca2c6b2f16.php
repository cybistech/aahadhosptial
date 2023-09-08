
<?php $__env->startSection('title'); ?>
<?php echo e(__('messages.Dashboard')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1><?php echo e(__('messages.Dashboard')); ?></h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li class="active"><?php echo e(__('messages.Dashboard')); ?></li>
            </ol>
         </div>
      </div>
   </div>
</div>
<div class="content mt-3">
<div class="col-xl-3 col-lg-6">
   <div class="card">
      <div class="card-body">
         <div class="stat-widget-one">
            <div class="stat-icon dib"><i class="fa fa-ambulance  text-primary border-primary"></i></div>
            <div class="stat-content dib">
               <div class="stat-text"><?php echo e(__('messages.Total')); ?></div>
			   <div class="stat-text"><?php echo e(__('messages.Appointment')); ?></div>
               <div class="stat-digit"><?php echo e($totalappointment); ?></div>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="col-xl-3 col-lg-6">
   <div class="card">
      <div class="card-body">
         <div class="stat-widget-one">
            <div class="stat-icon dib"><i class="ti-layout-grid2  text-success border-success"></i></div>
            <div class="stat-content dib">
               <div class="stat-text"><?php echo e(__('messages.Complete')); ?></div>
                <div class="stat-text"><?php echo e(__('messages.Appointment')); ?></div>
               <div class="stat-digit"><?php echo e($completeappointment); ?></div>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="col-xl-3 col-lg-6">
   <div class="card">
      <div class="card-body">
         <div class="stat-widget-one">
            <div class="stat-icon dib"><i class="ti-book  text-warning border-warning"></i></div>
            <div class="stat-content dib">
               <div class="stat-text"><?php echo e(__('messages.Pending')); ?></div>
               <div class="stat-text"> <?php echo e(__('messages.Appointment')); ?></div>
               <div class="stat-digit"><?php echo e($pendingappointement); ?></div>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="col-xl-3 col-lg-6">
   <div class="card">
      <div class="card-body">
         <div class="stat-widget-one">
            <div class="stat-icon dib"><i class="fa fa-star  text-danger border-danger"></i></div>
            <div class="stat-content dib">
               <div class="stat-text"><?php echo e(__('messages.Total')); ?></div>
               <div class="stat-text"><?php echo e(__('messages.Review')); ?></div>
               <div class="stat-digit"><?php echo e($totalreview); ?></div>
            </div>
         </div>
      </div>
   </div>
</div>
<div class="col-md-12 flt">
   <div class="row">
      <div class="col-md-12">
         <div class="card">
            <div class="card-body">
               <h4 class="orderh4">
                  <i class="fa fa-ambulance" aria-hidden="true"></i><?php echo e(__('messages.Upcoming Appointment')); ?>

                  <a class="btn btn-primary btn-flat m-b-30 m-t-30 elec textorder" href="<?php echo e(url('doctor/appointment')); ?>"><?php echo e(__('messages.Show All')); ?></a>
               </h4>
               <div class="table-responsive dtdiv">
                  <table id="latestorderTable" class="table table-striped dttablewidth">
                     <thead>
                        <tr>
                           <th><?php echo e(__('messages.Id')); ?></th>
                           <th><?php echo e(__('messages.Patient').' '.__('messages.Name')); ?></th>
                           <th><?php echo e(__('messages.Department').' '.__('messages.Name')); ?></th>
                           <th><?php echo e(__('messages.Service Name')); ?></th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php if(count($upcomingappoint)>0): ?>
                           <?php $__currentLoopData = $upcomingappoint; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $u): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                               <tr>
                                   <td><?php echo e($u->id); ?></td>
                                   <td><?php echo e($u->name); ?></td>
                                   <td><?php echo e($u->department->name); ?></td>
                                   <td><?php echo e($u->services->name); ?></td>
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
<?php $__env->startSection('footer'); ?>
<script type="text/javascript">doctorchangechat()</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('doctor.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/freakd1c/public_html/demo/singleclinic/resources/views/doctor/dashboard.blade.php ENDPATH**/ ?>