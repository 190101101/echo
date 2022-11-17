<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a class="active">
                <span>list</span>
            </a>
        </li>
        <li>
            <a href="/services/product/used">
                <span>used</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <div class="row" style="max-width: 100%; margin: 0 auto;">
        <?php foreach($data->product as $product): ?>
        <div class="col-md-4 mb-4">
            <div class="card text-center bg-transparent border-success mb-2">
                <div class="card-header border-success text-success">
                    <p><?php echo $product->product_title; ?></p>
                    <p><?php echo $product->product_description; ?></p>
                </div>
            </div>

            <a href="/services/product/info/text/<?php echo $product->product_token; ?>" 
                style="width: 100%;" class="btn btn-outline-success text-white mb-3">
                click to for read info
            </a>
        </div>
        <?php endforeach; ?>
    </div>    
</div>

