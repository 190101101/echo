function textSendSms(json, arg = false)
{
    if(json.code == 200){
        $('.textbelt_quota').html(json.data.textbelt_quota);
        alertify.success(json.message);
    }else{
        alertify.error(json.message);
    }
}

function paymentOrder(json, arg = false)
{
    if(json.code == 200){
        $('.user_coin').html(json.data.user_coin);
        alertify.success(json.message);
    }else{
        alertify.error(json.message);
    }
}
