function userSearch(json, arg = false)
{
    html = [];

    if(json.code == 200){

    json.data.user.forEach((element) => {
        html += 
        `  
            <tr>
                <td aria-label='delete'>
                    <a data-get="/panel/user/delete/${element.user_id}" 
                        data-render="userDelete" class="data-delete">
                        <img src="/files/system/svg/delete.svg">
                    </a>
                </td>
                <td aria-label='update'>
                    <a data-load="/panel/user/update/${element.user_id}" class="load_btn"
                        data-id="${element.user_id}">
                        <img src="/files/system/svg/update.svg">
                    </a>
                </td>
                <td aria-label='id'># ${element.user_id}</td>
                <td aria-label='token'>${element.user_token}</td>
                <td aria-label='status'>
                    <label class="switch">
                    <input type="checkbox" class="data-status" data-render="userStatus"
                        ${element.user_status == 0 ? null : 'checked'}
                        data-get="/panel/user/status/${element.user_id}">
                    <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label='level'>${element.user_level}</td>
            </tr>
        `;
    });

    $('.search_table').html(html);

    }else{
        alertify.error(json.message);
    }
}

function paymentSearch(json, arg = false)
{
    console.log(json);
    html = [];

    if(json.code == 200){

    json.data.payment.forEach((element) => {
        html += 
        `  
            <tr>
                <td aria-label='id'># ${element.payment_id}</td>
                <td aria-label='token'>${element.payment_token}</td>
                <td aria-label='amount'>${element.payment_amount}</td>
                <td aria-label='created'>${element.payment_created}</td>
                <td aria-label='user id'>${element.user_id}</td>
            </tr>
        `;
    });

    $('.search_table').html(html);

    }else{
        alertify.error(json.message);
    }
}

function settingSearch(json, arg = false)
{
    console.log(json);
    html = [];

    if(json.code == 200){

    json.data.setting.forEach((element) => {
        html += 
        `  
            <tr>
                <td aria-label='desc'>${element.setting_description}</td>
                <td aria-label='key'>${element.setting_key}</td>
                <td aria-label='value'>${element.setting_value}</td>
            </tr>
        `;
    });

    $('.search_table').html(html);

    }else{
        alertify.error(json.message);
    }
}

function saleSearch(json, arg = false){
    html = [];

    if(json.code == 200){

    json.data.sale.forEach((element) => {
        html += 
        `  
            <tr>
                <td aria-label='id'># ${element.sale_id}</td>
                <td aria-label='name'>${element.sale_name}</td>
                <td aria-label='type'>${element.sale_type}</td>
                <td aria-label='price'>${element.sale_price}</td>
                <td aria-label='created'>${element.sale_created}</td>
                <td aria-label='product'>${element.product_id}</td>
                <td aria-label='user'>${element.user_id}</td>
            </tr>
        `;
    });

    $('.search_table').html(html);

    }else{
        alertify.error(json.message);
    }
}

function textSearch(json, arg = false){
    html = [];

    if(json.code == 200){

    json.data.textbelt_sms.forEach((element) => {
        html += 
        `  
            <tr>
                <td aria-label='id'># ${element.sms_id}</td>
                <td aria-label='channel'>${element.sms_channel}</td>
                <td aria-label='type'>${element.sms_recipient}</td>
                <td aria-label='price'>${element.sms_text}</td>
                <td aria-label='created'>${element.textId}</td>
                <td aria-label='product'>${element.sms_status}</td>
                <td aria-label='user'>${element.sms_created}</td>
                <td aria-label='user'>${element.user_id}</td>
            </tr>
        `;
    });

    $('.search_table').html(html);

    }else{
        alertify.error(json.message);
    }
}
