<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a class="active">
                <span>channel</span>
            </a>
        </li>
          <li>
            <a href="/sms/text/tunnel/list">
                <span>tunnel</span>
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
                <th>created</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->channel as $channel): ?>
            <tr>
                <td aria-label='id'>#<?php echo $channel->channel_id; ?></td>
                <td aria-label='recipient'><?php echo $channel->channel_recipient; ?></td>
                <td aria-label='text'>
                    <details title='click me'>
                        <summary>
                            <?php echo substr($channel->channel_text, 0, 20); ?>
                        </summary>
                        <span style="color: var(--green-clr);">
                            <?php echo $channel->channel_text; ?>
                        </span>
                    </details>
                </td>
                <td aria-label='created'><?php echo $channel->channel_created; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

