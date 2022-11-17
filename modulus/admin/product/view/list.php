<div class="table_content">
    <table class="table-media">
        <thead>
            <tr>
                <th>
                    <img src="<?php echo SVG; ?>delete.svg">
                </th>
                <th>
                    <img src="<?php echo SVG; ?>update.svg">
                </th>
                <th>id</th>
                <th>token</th>
                <th>title</th>
                <th>description</th>
                <th>price</th>
                <th>status</th>
                <th>type</th>
                <th>sold</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->product as $product): ?>
            <tr>
                <td aria-label='delete'>
                    <a data-get="/panel/product/delete/<?php echo $product->product_id; ?>" 
                        class="data-delete" data-render="productDelete">
                        <img src="<?php echo SVG; ?>delete.svg">
                    </a>
                </td>
                <td aria-label='update'>
                    <a data-load="/panel/product/update/<?php echo $product->product_id; ?>" class="load_btn"
                        data-id="<?php echo $product->product_id; ?>">
                        <img src="<?php echo SVG; ?>update.svg">
                    </a>
                </td>
                <td aria-label='id'># <?php echo $product->product_id; ?></td>
                <td aria-label='token'><?php echo $product->product_token; ?></td>
                <td aria-label='level'><?php echo $product->product_title; ?></td>
                <td aria-label='description'><?php echo $product->product_description; ?></td>
                <td aria-label='price'><?php echo $product->product_price; ?></td>
                <td aria-label='status'>
                    <label class="switch">
                    <input type="checkbox" class="data-status" data-render="productStatus"
                        data-get="/panel/product/status/<?php echo $product->product_id; ?>" 
                        <?php echo $product->product_status == 1 ? 'checked' : NULL; ?> > 
                    <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label='type'><?php echo $product->product_type; ?></td>
                <td aria-label='sold'><?php echo $product->product_sold; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script>
    $('.history_btn').on('click', function(){
        load_create_form('/panel/product/create');
    });  
</script>
