<?php $user = $data->user; ?>
<div class="table_content">
    <div class="table_content_head">
        <ul class="nav nav-tab">
            <li>
                <a>
                    <img src="<?php echo SVG; ?>update.svg">
                    <span>update</span>
                </a>
            </li>
        </ul>
    </div>

    <!--  -->
    <!-- <form action="/panel/user/update" method="POST" class="general_form"> -->
    <!-- <form class="general_form user_update" data-action="/panel/user/update"> -->
    <form data-post="/panel/user/update" data-render="userUpdate" class="general_form data-post">

        <div class="form_box">
            <label>user token</label>
            <input type="text" name="user_token" value="<?php echo $user->user_token; ?>" required>
        </div>

        <div class="form_box">
            <label>user level</label>
            <input type="text" name="user_level" value="<?php echo $user->user_level; ?>" required>
        </div>

        <div class="form_box">
            <label>user updated at</label>
            <input type="text" value="<?php echo $user->user_updated; ?>" readonly>
        </div>

        <div class="form_box">
            <label>user created at</label>
            <input type="text" value="<?php echo $user->user_created; ?>" readonly>
        </div>

        <div class="form_box">
            <input type="hidden" name="user_id" value="<?php echo $user->user_id; ?>" readonly required>
            <button>update</button>
        </div>
    </form>
    <!--  -->
</div>

