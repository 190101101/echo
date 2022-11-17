<div class="sidebar">
    <div class="page_content">
        <div class="center_content">
            <form action="/auth" method="POST" class="center_form">
                <div class="form_box">
                    <label>token</label>
                    <input 
                        type="text" 
                        name="user_token" 
                        value="<?php echo cookie_user_token() ? cookie_user_token() : uniqid().uniqid(); ?>"
                        <?php echo cookie_user_token() ? 'readonly' : ''; ?>
                    >
                </div>
                <div class="form_box">
                    <button>
                        <img src="files/system/svg/key.png" width="15">
                        <span>log in</span>
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>