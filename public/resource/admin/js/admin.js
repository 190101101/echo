$(function() {
    $('.toggle_btn').on('click', function(){
        $('.sidebar').toggleClass('active');
        $('.page_content').toggleClass('active');
        $('.nav-logo').toggleClass('active');
        $(window).scrollTop(0, 0);
    });
});

function load_update_form(url)
{
    $('#history_html').load(url);
    if(!$('.history').hasClass('history-active')){
        history();
    }
}

function load_search_form(url)
{
    $('#history_html').load(url);
    $('.history').toggleClass('history-active');
    /*
    if(!$('.history').hasClass('history-active')){
        history();
    }
    */
}

function load_create_form(url)
{
    $('#history_html').load(url);
    history();
}

function close_history()
{
    if($('.history').hasClass('history-active')){
        history();
    }   
}

function history()
{
    $('.history').toggleClass('history-active');
    $("body").toggleClass('no-scroll');
}

$('body').on('click', '.load_btn', function() {
    load_update_form($(this).attr('data-load'));
});
