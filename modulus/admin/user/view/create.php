<div class="table_content">
    <div class="table_content_head">
        <ul class="nav nav-tab">
            <li>
                <a>
                    <img src="<?php echo SVG; ?>update.svg">
                    <span>create</span>
                </a>
            </li>
        </ul>
    </div>

    <!--  -->
    <!-- <form action="/panel/user/create" method="POST" class="general_form"> -->
    <form data-post="/panel/user/create" data-render="userCreate" class="general_form data-post">

        <div class="form_box">
            <label>user token</label>
            <input type="text" name="user_token" placeholder="user token" required>
        </div>

        <div class="form_box">
            <label>user level</label>
            <!-- <input type="number" min="1" max="7" name="user_level" value="1" required> -->
            <input type="number" name="user_level" value="1" required>
        </div>

        <div class="form_box">
            <button>create</button>
        </div>
    
    </form>
    <!--  -->
</div>
