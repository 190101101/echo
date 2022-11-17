<div class="table_content">
    <table class="table-media">
        <thead>
            <tr>
                <th>
                    <img src="<?php echo SVG; ?>update.svg">
                </th>
                <th>id</th>
                <th>sms_channel</th>
                <th>recipient</th>
                <th>text</th>
                <th>textId</th>
                <th>status</th>
                <th>created</th>
                <th>user</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->textbelt as $textbelt): ?>
            <tr>
                <td aria-label='read'>
                    <a data-load="/panel/textbelt/sms/read/<?php echo $textbelt->sms_id; ?>" class="load_btn"
                        data-id="<?php echo $textbelt->sms_id; ?>">
                        <img src="<?php echo SVG; ?>update.svg">
                    </a>
                </td>
                <td aria-label='id'># <?php echo $textbelt->sms_id; ?></td>
                <td aria-label='sms_channel'><?php echo $textbelt->sms_channel; ?></td>
                <td aria-label='recipient'><?php echo $textbelt->sms_recipient; ?></td>
                <td aria-label='text'><?php echo substr($textbelt->sms_text, 0, 15); ?></td>
                <td aria-label='textId'><?php echo $textbelt->textId; ?></td>
                <td aria-label='status'>
                    <label class="switch">
                    <input type="checkbox" disabled 
                        <?php echo $textbelt->sms_status == 1 ? 'checked' : NULL; ?> > 
                    <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label='created'><?php echo $textbelt->sms_created; ?></td>
                <td aria-label='user'><?php echo $textbelt->user_id; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
   
    <!-- paginator -->
    <section id="paginator">
        <div class="paginator_box">
            <a href="/panel/textbelt/sms/list/page/1">НАЧАЛО</a>
            <?php \library\pagination::selector($data->page, 'panel/textbelt/sms/list/'); ?>
            <a href="/panel/textbelt/sms/list/page/<?php echo $data->page->length ? $data->page->length : 1; ?>">КОНЕЦ</a>
       </div>
    </section>
    <!-- paginator -->
</div>

<script>
    $('.search-btn').on('click', function(){
        load_search_form('/panel/textbelt/sms/search');
    });

    $('.history_btn').on('click', function(){
        close_history();
    });
</script>
