<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a href="/sms/text/channel/list">
                <span>channel</span>
            </a>
        </li>
          <li>
            <a class="active">
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

            <?php foreach($data->tunnel as $tunnel): ?>
            <tr>
                <td aria-label='id'>#<?php echo $tunnel->tunnel_id; ?></td>
                <td aria-label='recipient'><?php echo $tunnel->tunnel_recipient; ?></td>
                <td aria-label='text'>
                    <details title='click me'>
                        <summary>
                            <?php echo substr($tunnel->tunnel_text, 0, 20); ?>
                        </summary>
                        <span style="color: var(--green-clr);">
                            <?php echo $tunnel->tunnel_text; ?>
                        </span>
                    </details>
                </td>
                <td aria-label='created'><?php echo $tunnel->tunnel_created; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

