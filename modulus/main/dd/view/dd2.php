<div class="table_content">
    <h1>code page | <?php echo date('h:i:s'); ?></h1>
    <table id="page" class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>token</th>
                <th>status</th>
                <th>number</th>
                <th>type</th>
                <th>desc</th>
                <th>microtime</th>
                <th>created</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->code as $code): ?>
            <tr>
                <td aria-label="id"><?php echo $code->code_id; ?></td>
                <td aria-label="token"><?php echo $code->code_token; ?></td>
                <td aria-label="status"><?php echo $code->code_status; ?></td>
                <td aria-label="number"><?php echo $code->code_number; ?></td>
                <td aria-label="type"><?php echo $code->code_type; ?></td>
                <td aria-label="desc"><?php echo $code->code_desc; ?></td>
                <td aria-label="microtime"><?php echo $code->code_microtime; ?></td>
                <td aria-label="created"><?php echo $code->code_created; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>