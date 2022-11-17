function userUpdate(json)
{
    if(json.code == 200){

    element = json.data.user;

    $('.data-post').html(`

		<div class="form_box">
		    <label>user token</label>
		    <input type="text" name="user_token" value="${element.user_token}" required>
		</div>

		<div class="form_box">
		    <label>user level</label>
		    <input type="text" name="user_level" value="${element.user_level}" required>
		</div>

		<div class="form_box">
		    <label>user updated at</label>
		    <input type="text" value="${element.user_updated}" readonly>
		</div>

		<div class="form_box">
		    <label>user created at</label>
		    <input type="text" value="${element.user_created}" readonly>
		</div>

		<div class="form_box">
		    <input type="hidden" name="user_id" value="${element.user_id}" readonly required>
		    <button>update</button>
		</div>

	`);

    $('.table-media tr').find("a[data-id='"+ element.user_id +"']").parents('.table-media tr').html(`
		
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
		
		    <input type="checkbox" class="data-status"

	    		${element.user_status == 0 ? null : 'checked'}  

		    	data-get="/panel/user/status/${element.user_id}" > 
		
		    	<span class="slider round"></span>
		
		    </label>
		
		</td>
		
		<td aria-label='level'>${element.user_level}</td>    	
	`);

    	alertify.success(json.message);

    }else{
        alertify.error(json.message);
    }
}
