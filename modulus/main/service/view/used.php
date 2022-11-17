<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a href="/services/product/list">
                <span>list</span>
            </a>
        </li>
        <li>
            <a class="active">
                <span>used</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <table id="page" class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>price</th>
                <th>created</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->sale as $sale): ?>
            <tr>
                <td aria-label="id"><?php echo $sale->sale_id; ?></td>
                <td aria-label="name"><?php echo $sale->sale_name; ?></td>
                <td aria-label="price"><?php echo $sale->sale_price; ?> $</td>
                <td aria-label="created"><?php echo $sale->sale_created; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
