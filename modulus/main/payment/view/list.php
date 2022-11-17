<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a href="/payment/token/info">
                <span>info</span>
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

    <?php if($data->status): ?>
    <?php $status = $data->status; ?>
    <table class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>token</th>
                <th>amount</th>
                <th>status</th>
                <th>created</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td aria-label="id"><?php echo $status->payment_id; ?></td>
                <td aria-label="token">
                    <span class="copyBtn" title="click me to copy">
                        <?php echo $status->payment_token; ?>
                    </span>
                </td>
                <td aria-label="amount">
                    <?php echo $status->payment_amount ?: 'undefined'; ?>
                </td>
                <td aria-label='status'>
                    <label class="switch">
                        <input type="checkbox" <?php echo !$status->payment_status ?: 'checked'; ?> disabled> 
                        <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label="created"><?php echo $status->payment_created ?></td>
            </tr>
        </tbody>
    </table>
    <?php endif; ?>
    <!-- ------- -->
    <table id="page" class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>token</th>
                <th>amount</th>
                <th>status</th>
                <th>created</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->payment as $payment): ?>
            <tr>
                <td aria-label="id"><?php echo $payment->payment_id; ?></td>
                <td aria-label="token"><?php echo $payment->payment_token; ?></td>
                <td aria-label="amount"><?php echo $payment->payment_amount; ?> $</td>
                <td aria-label='status'>
                    <label class="switch">
                        <input type="checkbox" <?php echo !$payment->payment_status ?: 'checked'; ?> disabled> 
                        <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label="created"><?php echo $payment->payment_created ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>