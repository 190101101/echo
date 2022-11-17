function ajaxGet(url)
{
    return $.ajax({
        
        beforeSend: function(){
            dataGetDisabled();
        },
        
        type: 'GET',
        
        url: url,
        
        complete: function(){
            setTimeout(dataGetEnabled, 1000);
        }
    });
}

$('body').on('click', '.data-get', function(e) {

    arg = this;
    get = $(arg).attr("data-get");
    render = $(arg).attr("data-render");

    ajaxGet(get).done(function(data){
        var json = $.parseJSON(data);
        window[render](json, arg);
    });
});

$('body').on('click', '.data-delete', function() {

    arg = this;
    get = $(arg).attr("data-get");
    render = $(arg).attr("data-render");

    alertify.confirm('вы уверены что хотите удалить???', function(){ 

        ajaxGet(get).done(function(data){
            var json = $.parseJSON(data);
            window[render](json, arg);
        });
    });
});


$('body').on('click', '.data-status', function(e) {

    arg = this;
    get = $(arg).attr("data-get");
    render = $(arg).attr("data-render");

    ajaxGet(get).done(function(data){
        var json = $.parseJSON(data);
        window[render](json, arg);
    });
});
