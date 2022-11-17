<nav class="navbar fixed-bottom navbar-expand-md">
    <a class="navbar-brand">
        <img src="files/system/svg/react.svg" class="nav-logo toggle_btn">
    </a>
    <ul class="navbar-nav mx-auto">
        <?php if(user_level() == 99): ?>
        <li> 
            <a href="/panel/admin"> 
                <img src="files/system/svg/slack.svg">
            </a>
        </li>
        <?php endif; ?>
        <?php if(user_level() == 1): ?>
        <li> 
            <a href="/"> 
                <img src="files/system/svg/github.svg">
            </a>
        </li>
        <?php elseif(user_level() == 2): ?>
        <li> 
            <a href="/payment/token/info"> 
                <img src="files/system/svg/usd.png">
            </a>
        </li>
        <?php elseif(user_level() == 3): ?>
        <li> 
            <a href="/"> 
                <img src="files/system/svg/category.svg">
            </a>
        </li>
        <?php elseif(user_level() > 3): ?>
       <li> 
            <a href="/"> 
                <img src="files/system/svg/send.png">
            </a>
        </li>
        <li> 
            <a href="/services/product/list"> 
                <img src="files/system/svg/category.svg">
            </a>
        </li>
        <li> 
            <a href="/payment/token/info"> 
                <img src="files/system/svg/usd.png">
            </a>
        </li>
        <?php endif; ?>
        <li style="display: flex; align-items: center;"> 
            <div class="loader spinner-border spinner-border-sm text-success" role="status">
              <span class="sr-only">Loading...</span>
            </div>
        </li>
    </ul>
    <ul class="navbar-nav" style="position:absolute; right: 0;">
        <li> 
            <a href="/sms/text/channel/call"> 
                <img src="files/system/svg/proton.svg">
            </a>
        </li>
    </ul>
</nav>


<!-- 
admin 632a2ec320ba6632a2ec320ba8
 -->