function userStatus(json, arg = false)
{
	json.code == 200 
		? alertify.success(json.message)
		: alertify.error(json.message);
}

function userDelete(json, arg = false)
{
    $('#history_html').html();
    close_history();

	if(json.code == 200){
        $(arg).parents('.table-media tr').hide();
		alertify.success(json.message)
	}else{
		alertify.error(json.message);
	}
}

function textbeltTokenStatus(json, arg = false)
{
	json.code == 200 
		? alertify.success(json.message)
		: alertify.error(json.message);
}

function productStatus(json, arg = false)
{
	json.code == 200 
		? alertify.success(json.message)
		: alertify.error(json.message);
}
