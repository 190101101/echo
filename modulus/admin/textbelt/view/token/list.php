<div class="table_content">
    <table id="tableview" class="table-media">
        <thead>
            <tr>
                <th>
                    <img src="<?php echo SVG; ?>delete.svg">
                </th>
                <th>
                    <img src="<?php echo SVG; ?>update.svg">
                </th>
                <th>id</th>
                <th>code</th>
                <th>call</th>
                <th>type</th>
                <th>quota</th>
                <th>status</th>
                <th>microtime</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->textbelt as $textbelt): ?>
            <tr>
                <td aria-label='delete'>
                    <a data-get="/panel/textbelt/token/delete/<?php echo $textbelt->token_id; ?>" 
                        class="data-delete" data-render="tokenDelete">
                        <img src="<?php echo SVG; ?>delete.svg">
                    </a>
                </td>
                <td aria-label='update'>
                    <a data-load="/panel/textbelt/token/update/<?php echo $textbelt->token_id; ?>" class="load_btn"
                        data-id="<?php echo $textbelt->token_id; ?>">
                        <img src="<?php echo SVG; ?>update.svg">
                    </a>
                </td>
                <td aria-label='id'># <?php echo $textbelt->token_id; ?></td>
                <td aria-label='code'><?php echo $textbelt->token_code; ?></td>
                <td aria-label='call'>
                    <label class="switch">
                    <input type="checkbox" disabled
                        <?php echo $textbelt->token_call == 1 ? 'checked' : NULL; ?> > 
                    <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label='type'><?php echo $textbelt->token_type; ?></td>
                <td aria-label='quota'><?php echo $textbelt->token_quota; ?></td>
                <td aria-label='status'>
                    <label class="switch">
                    <input type="checkbox" class="data-status" data-render="textbeltTokenStatus"
                        data-get="/panel/textbelt/token/status/<?php echo $textbelt->token_id; ?>" 
                        <?php echo $textbelt->token_status == 1 ? 'checked' : NULL; ?> > 
                    <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label='microtime'><?php echo substr($textbelt->token_microtime, -5); ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>


<script>
    $('.history_btn').on('click', function(){
        close_history();
    });  
</script>
