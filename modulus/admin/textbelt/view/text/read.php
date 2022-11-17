<?php $textbelt = $data->textbelt; ?>
<div class="table_content">
    <table class="table-media horizontal">
        <thead>
            <tr>
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
            <tr>
                <td aria-label='id'># <?php echo $textbelt->sms_id; ?></td>
                <td aria-label='sms_channel'><?php echo $textbelt->sms_channel; ?></td>
                <td aria-label='recipient'><?php echo $textbelt->sms_recipient; ?></td>
                <td aria-label='text'><?php echo $textbelt->sms_text; ?></td>
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
        </tbody>
    </table>
</div>
