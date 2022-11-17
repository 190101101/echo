<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a>
                <span>notification</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <h4 style="color: #8ac832;">Now</h4>
    <table class="table-media horizontal no-table">
        <tbody>
            <tr>
                <?php if($data->notification): ?>
                    <td aria-label="<?php echo $data->notification->notice_theme; ?>:">
                        <span class="ml-1" style="color: var(--green-clr);">
                            <?php echo $data->notification->notice_text; ?>
                        </span>
                    </td>
                <?php else: ?>
                    <td>
                        No new notification
                    </td>
                <?php endif; ?>
            </tr>
        </tbody>
    </table>

    <h4 style="color: #8ac832;">Earlier</h4>
    <table class="table-media horizontal no-table">
        <tbody>
            <?php if($data->notice): ?>
            <?php foreach($data->notice as $notice): ?>
            <tr>
                <td aria-label="#<?php echo $notice->notice_id; ?>">
                    <details title='click me'>
                        <summary class="pl-4">
                            <span><?php echo $notice->notice_theme; ?></span>
                            <span style="position: absolute; right: 20px;">
                                <?php echo $notice->notice_created_at; ?>
                            </span>
                        </summary>
                        <span style="color: var(--green-clr);">
                            <?php echo $notice->notice_text; ?>
                        </span>
                    </details>
                </td>
            </tr>
            <?php endforeach; ?>

            <?php else: ?>
                <tr>
                    <td>
                        No have notifications.
                    </td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>
</div>

