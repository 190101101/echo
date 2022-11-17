<div class="table_content">
    <!-- <form action="/panel/user/search" method="POST" class="general_form" style="padding-bottom: 7px;"> -->
    <form data-post="/panel/user/search" data-render="userSearch" class="general_form data-post" style="padding-bottom: 7px;">

        <div class="form_box">
            <input type="text" name="search" placeholder="key:value" 
            autofocus>
        </div>
    </form>

    <table class="table-media horizontal">
        <thead>
            <tr>
                <th>
                    <img src="<?php echo SVG; ?>delete.svg">
                </th>
                <th>
                    <img src="<?php echo SVG; ?>update.svg">
                </th>
                <th>id</th>
                <th>token</th>
                <th>status</th>
                <th>level</th>
            </tr>
        </thead>
        <tbody class="search_table"></tbody>
    </table>
</div>

