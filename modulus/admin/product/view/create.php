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
    <!-- <form action="/panel/product/create" method="POST" class="general_form"> -->
    <form data-post="/panel/product/create" data-render="productCreate" class="general_form data-post">

        <div class="form_box">
            <label>token</label>
            <input type="text" name="product_token" placeholder="token" required>
        </div>

        <div class="form_box">
            <label>title</label>
            <input type="text" name="product_title" placeholder="title" required>
        </div>

        <div class="form_box">
            <label>description</label>
            <input type="text" name="product_description" placeholder="description" required>
        </div>

        <div class="form_box">
            <label>price</label>
            <input type="text" name="product_price" placeholder="price" required>
        </div>

        <div class="form_box">
            <label>type</label>
            <input type="text" name="product_type" placeholder="type" required>
        </div>

        <div class="form_box">
            <button>create</button>
        </div>
    
    </form>
    <!--  -->
</div>
