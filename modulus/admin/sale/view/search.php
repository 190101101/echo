<div class="table_content">
    <!-- <form action="/panel/sale/search" method="POST" class="general_form" style="padding-bottom: 7px;"> -->
    <form data-post="/panel/sale/search" data-render="saleSearch" class="general_form data-post" style="padding-bottom: 7px;">

        <div class="form_box">
            <input type="text" name="search" placeholder="key:value" 
            autofocus>
        </div>
    </form>

    <table class="table-media horizontal">
        <thead>
             <tr>
                <th>id</th>
                <th>name</th>
                <th>type</th>
                <th>price</th>
                <th>created</th>
                <th>product</th>
                <th>user</th>
            </tr>
        </thead>
        <tbody class="search_table"></tbody>
    </table>
</div>

