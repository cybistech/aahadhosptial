<div class="service-block col-lg-4 col-md-6 col-sm-12">
    <a href="<?php echo e(route('service_detail', ['slug' => $s->slug])); ?>">
        <div class="inner-box">
            
            <span class="icon flaticon-heartbeat"></span>
            <h5 style="color: black"><?php echo e($s->name); ?></h5>
            <a href="<?php echo e(route('service_detail', ['slug' => $s->slug])); ?>">
                <div class="text"><?php echo substr($s->description,0,140); ?></div>
            </a>
        </div>
    </a>
</div>
<?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/front/components/services.blade.php ENDPATH**/ ?>