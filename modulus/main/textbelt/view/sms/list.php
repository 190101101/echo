<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a href="/sms/text/send">
                <span>sms</span>
            </a>
        </li>
          <li>
            <a class="active">
                <span>list</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <table id="page" class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>recipient</th>
                <th>text</th>
                <th>status</th>
                <th>created</th>
            </tr>
        </thead>
        <tbody>

            <?php foreach($data->sms as $sms): ?>
            <tr>
                <td aria-label='id'>#<?php echo $sms->sms_id; ?></td>
                <td aria-label='recipient'><?php echo $sms->sms_recipient; ?></td>
                <td aria-label='text'>
                    <details title='click me'>
                        <summary>
                            <?php echo substr($sms->sms_text, 0, 20); ?>
                        </summary>
                        <span style="color: var(--green-clr);">
                            <?php echo $sms->sms_text; ?>
                        </span>
                    </details>
                </td>
                <td aria-label='status'>
                    <label class="switch">
                        <input type="checkbox" <?php echo $sms->sms_status == 1 ? 'checked' : ''; ?> disabled> 
                        <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label='created'><?php echo $sms->sms_created; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

