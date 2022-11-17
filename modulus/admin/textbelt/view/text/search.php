<div class="table_content">
    <!-- <form action="/panel/textbelt/sms/search" method="POST" class="general_form" style="padding-bottom: 7px;"> -->
    <form data-post="/panel/textbelt/sms/search" data-render="textSearch" class="general_form data-post" style="padding-bottom: 7px;">

        <div class="form_box">
            <input type="text" name="search" placeholder="key:value" 
            autofocus>
        </div>
    </form>

    <table class="table-media horizontal">
        <thead>
            <tr>
                <th>id</th>
                <th>sms_channel</th>
                <th>recipient</th>
                <th>text</th>
                <th>textId</th>
                <th>status</th>
                <th>created</th>
                <th>user</th>
            </tr>
        </thead>
        <tbody class="search_table"></tbody>
    </table>
</div>

