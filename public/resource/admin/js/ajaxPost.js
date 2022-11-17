function ajaxPost(form, route)
{    
    var formData = new FormData($(form)[0]);

    return $.ajax({
        
        beforeSend: function(){
            dataGetDisabled();
            $(form).find('button').prop('disabled', true);
        },
        
        complete: function(){
            setTimeout(dataGetEnabled, 1000);
            $(form).trigger('reset');
            $(form).find('button').prop('disabled', false);
        },
        
        type: "POST",
        url: route,
        data: formData,
        processData: false,
        contentType: false,

    });
}


$('body').on('submit', '.data-post', function(e) {

    e.preventDefault();
    
    arg = $(this).attr("data-post");
    render = $(this).attr("data-render");

    ajaxPost(this, arg).done(function(data){
        var json = $.parseJSON(data);
        window[render](json, arg);
    });
});
