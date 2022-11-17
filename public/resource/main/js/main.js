$(function() {
    $('.toggle_btn').on('click', function(){
        $('.sidebar').toggleClass('active');
        $('.page_content').toggleClass('active');
        $('.nav-logo').toggleClass('active');
        $(window).scrollTop(0, 0);
    });
});

$(function(){
    $('body').on('click', '#copy_btn', function(){
        let copyBtn = this;
        let select = document.createRange();
        select.selectNode(copyBtn);
        window.getSelection().removeAllRanges();
        window.getSelection().addRange(select);
        document.execCommand('copy');
        window.getSelection().removeAllRanges();
    });
})