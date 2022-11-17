<div class="table_content">
    <!-- <form action="/panel/payment/search" method="POST" class="general_form" style="padding-bottom: 7px;"> -->
    <form data-post="/panel/payment/search" data-render="paymentSearch" class="general_form data-post" style="padding-bottom: 7px;">

        <div class="form_box">
            <input type="text" name="search" placeholder="key:value" 
            autofocus>
        </div>
    </form>

    <table class="table-media horizontal">
        <thead>
           <tr>
                <th>id</th>
                <th>token</th>
                <th>amount</th>
                <th>created</th>
                <th>user_id</th>
            </tr>
        </thead>
        <tbody class="search_table"></tbody>
    </table>
</div>

