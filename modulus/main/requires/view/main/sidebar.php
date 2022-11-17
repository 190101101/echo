<div class="sidebar">
    <div class="online">
        <table>
            <thead>
                <tr class="online-first-tr">
                    <th><span class="pulse-1"></span></th>
                    <th class="user_coin"><?php echo user_coin(); ?></th>
                    <th><span class="pulse-2"></span></th>
                    <th>3301</th>
                    <th><span class="pulse-3"></span></th>
                    <th class="textbelt_quota"><?php echo textbelt_quota(); ?></th>
                </tr>
            </thead>
            <tbody>
                <tr class="online-second-tr">
                    <td></td>
                    <td>coin</td>
                    <td></td>
                    <td>user</td>
                    <td></td>
                    <td>quota</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="cat" id="category">
        <ul class="cat-btn-ul">
            <li class="cat-btn-li " data-toggle="collapse"
                data-target="#smscollapse">
                <img src="files/system/svg/send.png" class="cat-img">
                <img src="files/system/svg/send.png" class="filter">
                <div class="cat-word-box">
                    <span>text sms</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <div id="smscollapse" class="collapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li">
                    <a href="/sms/text/send" class="cat-link">send sms</a>
                    <span>send sms</span>
                </li>
                <li class="cat-li">
                    <a href="/sms/text/list" class="cat-link">sms list</a>
                    <span>all text message</span>
                </li>
                <li class="cat-li">
                    <a href="/sms/text/channel/list" class="cat-link">channel</a>
                    <span>channel list</span>
                </li>
                <li class="cat-li">
                    <a href="/sms/text/tunnel/list" class="cat-link">tunnel</a>
                    <span>tunnel list</span>
                </li>
            </div>
        </ul>

        <ul class="cat-btn-ul">
            <li class="cat-btn-li" data-toggle="collapse" data-target="#usercollapse">
                <img src="files/system/svg/paw.svg" class="cat-img">
                <img src="files/system/svg/paw.svg" class="filter">
                <div class="cat-word-box">
                    <span>profile</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <div id="usercollapse" class="collapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li">
                    <a href="/profile/info" class="cat-link">profile</a>
                    <span>user info</span>
                </li>

                <li class="cat-li">
                    <a href="/profile/contact" class="cat-link">contact</a>
                    <span>contact list</span>
                </li>
            </div>
        </ul>
        <ul class="cat-btn-ul">
            <li class="cat-btn-li" data-toggle="collapse"
                data-target="#paymentcollapse">
                <img src="files/system/svg/usd.png" class="cat-img">
                <img src="files/system/svg/usd.png" class="filter">
                <div class="cat-word-box">
                    <span>payment</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <div id="paymentcollapse" class="collapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li">
                    <a href="/payment/token/info" class="cat-link">order payment</a>
                    <span>replenish the balance</span>
                </li>
                <li class="cat-li">
                    <a href="/payment/order/list" class="cat-link">order list</a>
                    <span>list of order</span>
                </li>
            </div>
        </ul>
        <ul class="cat-btn-ul">
            <li class="cat-btn-li" data-toggle="collapse"
                data-target="#servicecollapse">
                <img src="files/system/svg/category.svg" class="cat-img">
                <img src="files/system/svg/category.svg" class="filter">
                <div class="cat-word-box">
                    <span>services</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <div id="servicecollapse" class="collapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li">
                    <a href="/services/product/list" class="cat-link">product lists</a>
                    <span>product lists</span>
                </li>
                <li class="cat-li">
                    <a href="/services/product/used" class="cat-link">used services</a>
                    <span>used services</span>
                </li>
            </div>
        </ul>
        <ul class="cat-btn-ul">
            <li class="cat-btn-li" data-toggle="collapse" data-target="#informationcollapse">
                <img src="files/system/svg/github.svg" class="cat-img">
                <img src="files/system/svg/github.svg" class="filter">
                <div class="cat-word-box">
                    <span>information</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <div id="informationcollapse" class="collapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li ">
                    <a href="/information/about" class="cat-link">about Us</a>
                    <span>Who am I</span>
                </li>
                <li class="cat-li ">
                    <a href="/information/rule" class="cat-link">rule</a>
                    <span>how to use</span>
                </li>
                <li class="cat-li ">
                    <a href="/information/question" class="cat-link">questions</a>
                    <span>frequently asked Questions</span>
                </li>
            </div>
        </ul>
        
    </div>
    
    <div class="sidebar_option">
        <a href='/profile/info'>
        <img src="files/system/svg/user.svg">
        <span>profile</span>
        </a>
    </div>
</div>