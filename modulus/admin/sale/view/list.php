<div class="table_content">
    <table class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>type</th>
                <th>price</th>
                <th>created</th>
                <th>product</th>
                <th>user</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->sale as $sale): ?>
            <tr>
                <td aria-label='id'># <?php echo $sale->sale_id; ?></td>
                <td aria-label='name'><?php echo $sale->sale_name; ?></td>
                <td aria-label='type'><?php echo $sale->sale_type; ?></td>
                <td aria-label='price'><?php echo $sale->sale_price; ?></td>
                <td aria-label='created'><?php echo $sale->sale_created; ?></td>
                <td aria-label='product'><?php echo $sale->product_id; ?></td>
                <td aria-label='user'><?php echo $sale->user_id; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <!-- paginator -->
    <section id="paginator">
        <div class="paginator_box">
            <a href="/panel/sale/list/page/1">НАЧАЛО</a>
            <?php \library\pagination::selector($data->page, 'panel/sale/list/'); ?>
            <a href="/panel/sale/list/page/<?php echo $data->page->length ? $data->page->length : 1; ?>">КОНЕЦ</a>
       </div>
    </section>
    <!-- paginator -->

</div>

<script>
    $('.search-btn').on('click', function(){
        load_search_form('/panel/sale/search');
    });

    $('.history_btn').on('click', function(){
        close_history();
    });
</script>
