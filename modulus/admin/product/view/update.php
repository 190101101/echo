<?php $product = $data->product; ?>
<div class="table_content">
    <div class="table_content_head">
        <ul class="nav nav-tab">
            <li>
                <a>
                    <img src="<?php echo SVG; ?>update.svg">
                    <span>update</span>
                </a>
            </li>
        </ul>
    </div>

    <!--  -->
    <!-- <form action="/panel/product/update" method="POST" class="general_form"> -->
    <!-- <form class="general_form product_update" data-action="/panel/product/update"> -->
    <form data-post="/panel/product/update" data-render="productUpdate" class="general_form data-post">

        <div class="form_box">
            <label>token</label>
            <input type="text" name="product_token" value="<?php echo $product->product_token; ?>" required>
        </div>

        <div class="form_box">
            <label>title</label>
            <input type="text" name="product_title" value="<?php echo $product->product_title; ?>" required>
        </div>

        <div class="form_box">
            <label>description</label>
            <input type="text" name="product_description" value="<?php echo $product->product_description; ?>" required>
        </div>

        <div class="form_box">
            <label>price</label>
            <input type="text" name="product_price" value="<?php echo $product->product_price; ?>" required>
        </div>

        <div class="form_box">
            <label>type</label>
            <input type="text" name="product_type" value="<?php echo $product->product_type; ?>" required>
        </div>

        <div class="form_box">
            <input type="hidden" name="product_id" value="<?php echo $product->product_id; ?>" readonly required>
            <button>update</button>
        </div>
    </form>
    <!--  -->
</div>

