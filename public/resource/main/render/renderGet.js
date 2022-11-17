function ruleAgree(json, arg = false)
{
    if(json.code == 200){
        $(arg).hide();
        alertify.success(json.message);
    }
}

function textBuy(json, arg = false)
{
    if(json.code == 200){
        $('.textbelt_quota').html(json.data.textbelt_quota);
        $('.user_coin').html(json.data.user_coin);
        alertify.success(json.message);
    }else{
        alertify.error(json.message);
    }
}

function textSendSms(json, arg = false)
{
    console.log(json);
    console.log(arg);
}

function PaymentOrder(json, arg = false)
{
    if(json.code == 200){
        $('.textbelt_quota').html(json.data.textbelt_quota);
        $('.user_coin').html(json.data.user_coin);
        alertify.success(json.message);
    }else{
        alertify.error(json.message);
    }
}

