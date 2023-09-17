<?php if($paginator->hasPages()): ?>
    <div class="text-center">
        <ul class="pagination justify-content-center">
            
            <?php if($paginator->onFirstPage()): ?>
                <li class="page-item disabled">
                    <span class="page-link">&lsaquo;</span>
                </li>
            <?php else: ?>
                <li class="page-item">
                    <a class="page-link" href="<?php echo e($paginator->previousPageUrl()); ?>" rel="prev">&lsaquo;</a>
                </li>
            <?php endif; ?>

            
            <?php $__currentLoopData = $elements; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $element): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                
                <?php if(is_string($element)): ?>
                    <li class="page-item disabled"><span class="page-link"><?php echo e($element); ?></span></li>
                <?php endif; ?>

                
                <?php if(is_array($element)): ?>
                    <?php $__currentLoopData = $element; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page => $url): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($page == $paginator->currentPage()): ?>
                            <li class="page-item active" aria-current="page"><span class="page-link"><?php echo e($page); ?></span></li>
                        <?php else: ?>
                            <li class="page-item"><a class="page-link" href="<?php echo e($url); ?>"><?php echo e($page); ?></a></li>
                        <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            
            <?php if($paginator->hasMorePages()): ?>
                <li class="page-item">
                    <a class="page-link" href="<?php echo e($paginator->nextPageUrl()); ?>" rel="next">&rsaquo;</a>
                </li>
            <?php else: ?>
                <li class="page-item disabled">
                    <span class="page-link">&rsaquo;</span>
                </li>
            <?php endif; ?>
        </ul>
        <p class="small text-muted">
            <?php echo __('Showing'); ?>

            <span class="fw-semibold"><?php echo e($paginator->firstItem()); ?></span>
            <?php echo __('to'); ?>

            <span class="fw-semibold"><?php echo e($paginator->lastItem()); ?></span>
            <?php echo __('of'); ?>

            <span class="fw-semibold"><?php echo e($paginator->total()); ?></span>
            <?php echo __('results'); ?>

        </p>
    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\clinic Management\resources\views/vendor/pagination/bootstrap-5.blade.php ENDPATH**/ ?>