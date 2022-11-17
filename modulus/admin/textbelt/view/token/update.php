<?php $token = $data->token; ?>
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
    <!-- <form action="/panel/token/update" method="POST" class="general_form"> -->
    <!-- <form class="general_form token_update" data-action="/panel/token/update"> -->
    <form data-post="/panel/textbelt/token/update" data-render="textbeltTokenUpdate" class="general_form data-post">

        <div class="form_box">
            <label>code</label>
            <input type="text" name="token_code" value="<?php echo $token->token_code; ?>" required>
        </div>

        <div class="form_box">
            <label>token type</label>
            <input type="text" name="token_type" value="<?php echo $token->token_type; ?>" required>
        </div>

        <div class="form_box">
            <label>token quota</label>
            <input type="text" name="token_quota" value="<?php echo $token->token_quota; ?>" required>
        </div>

        <div class="form_box">
            <label>token microtime</label>
            <input type="text" name="token_microtime" value="<?php echo $token->token_microtime; ?>" required>
        </div>

        <div class="form_box">
            <label>token created</label>
            <input type="text" value="<?php echo $token->token_created; ?>" readonly>
        </div>

        <div class="form_box">
            <input type="hidden" name="token_id" value="<?php echo $token->token_id; ?>" readonly required>
            <button>update</button>
        </div>
    </form>
    <!--  -->
</div>

