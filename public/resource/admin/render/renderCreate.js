function userCreate(json, arg = false)
{
    if(json.code == 200){

    element = json.data.user;
    
    $('.table-media').prepend(` 

        <tr>

            <td aria-label='delete'>

                <a data-get="/panel/user/delete/${element.user_id}" 

                    class="data-delete" data-render="userDelete">

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
            
                <input type="checkbox" class="data-status"  data-render="userStatus"
            
                    data-get="/panel/user/status/${element.user_id}" 

                    ${element.user_status == 0 ? null : 'checked'}> 
            
                <span class="slider round"></span>
            
                </label>
            
            </td>

            <td aria-label='level'>${element.user_level}</td>     

        </tr>

    `);
    
    }else{
        alertify.error(json.message);
    }
}
