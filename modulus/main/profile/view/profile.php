<?php $user = $data->user; ?>
<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a class="active">
                <span>info</span>
            </a>
        </li>
        <li>
            <a href='profile/contact'>
                <span>contact</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <table class="table-media horizontal">
        <thead>
            <tr>
                <th>id</th>
                <th>token</th>
                <th>coin</th>
                <th>level</th>
                <th>created</th>
                <th>status</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td aria-label='id'><?php echo $user->user_id; ?></td>
                <td aria-label='token'><?php echo $user->user_token; ?> </td>
                <td aria-label='coin'><?php echo user_coin(); ?></td>
                <td aria-label='level'><?php echo $user->user_level; ?></td>
                <td aria-label='created'><?php echo $user->user_created; ?></td>
                <td aria-label='status'>
                    <label class="switch">
                        <input type="checkbox" <?php echo $user->user_status == 1 ? 'checked' : ''; ?> disabled> 
                        <span class="slider round"></span>
                    </label>
                </td>
            </tr>
        </tbody>
    </table>
    <?php if($user->user_status == 0): ?>
        <a class="btn btn-sm btn-outline-success text-white" href="/information/rule" title="click me"> read the rule </a>
    <?php endif; ?>
</div>