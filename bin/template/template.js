function settingSearch(json, arg = false)
{
    html = [];

    if(json.code == 200){

    json.data.setting.forEach((element) => {
        html += 
        `  
            <tr>
                <td aria-label='desc'>${setting.setting_description}</td>
                <td aria-label='key'>${setting.setting_key}</td>
                <td aria-label='value'>${setting.setting_value}</td>
            </tr>
        `;
    });

    $('.search_table').html(html);

    }else{
        alertify.error(json.message);
    }
}
