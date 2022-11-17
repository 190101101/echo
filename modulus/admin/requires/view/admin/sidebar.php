<?php $model = new modulus\admin\requires\model\requireModel(); ?>
<div class="sidebar">
    <div class="online">
        <table>
            <thead>
                <tr class="online-first-tr">
                    <th><span class="pulse-1"></span></th>
                    <th>1901</th>
                    <th><span class="pulse-2"></span></th>
                    <th>324</th>
                    <th><span class="pulse-3"></span></th>
                    <th>742</th>
                </tr>
            </thead>
            <tbody>
                <tr class="online-second-tr">
                    <td></td>
                    <td>Онлайн</td>
                    <td></td>
                    <td>файлов</td>
                    <td></td>
                    <td>скачиваний</td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- 
    <div class="cat-head">
        <h4>категории</h4>
        <hr class="hr-line">
    </div>
     -->
    <div class="cat" id="category">
        <ul class="cat-btn-ul">
            <!-- data-target="#settingscollapse" -->
            <li class="cat-btn-li" data-toggle="collapse">
                <img src="<?php echo SVG; ?>github.svg" class="cat-img">
                <img src="<?php echo SVG; ?>github.svg" class="filter">
                <div class="cat-word-box">
                    <span>инфо</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <!-- class="collapse"-->
            <div id="settingscollapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li">
                    <a href="/panel/admin" class="cat-link">panel</a>
                    <span>system</span>
                </li>
                <li class="cat-li">
                    <a href="/panel/setting/static/list" class="cat-link">static</a>
                    <span>static settings</span>
                </li>
                <li class="cat-li">
                    <a href="/panel/setting/dynamic/list" class="cat-link">dynamic</a>
                    <span>dynamic settings</span>
                </li>
            </div>
        </ul>
        
        <ul class="cat-btn-ul">
            <li class="cat-btn-li" data-toggle="collapse" data-target="#textbeltcollapse">
                <img src="files/system/svg/send.png" class="cat-img">
                <img src="files/system/svg/send.png" class="filter">
                <div class="cat-word-box">
                    <span>textbelt</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <!-- class="collapse"-->
            <div id="textbeltcollapse" class="collapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li">
                    <a href="/panel/textbelt/sms/list/page/1" class="cat-link">SMS text</a>
                    <span>SMS list</span>
                </li>
                <li class="cat-li">
                    <a href="/panel/textbelt/channel/list/page/1" class="cat-link">Channel</a>
                    <span>textbelt Channel</span>
                </li>
                <li class="cat-li">
                    <a href="/panel/textbelt/tunnel/list/page/1" class="cat-link">Tunnel</a>
                    <span>Tunnel list</span>
                </li>
                <li class="cat-li">
                    <a href="/panel/textbelt/token/list" class="cat-link">Token</a>
                    <span>Token list</span>
                </li>
                <li class="cat-li">
                    <a href="/panel/textbelt/caller/list/page/1" class="cat-link">Caller</a>
                    <span>Caller statics</span>
                </li>
            </div>
        </ul>

        <ul class="cat-btn-ul">
            <li class="cat-btn-li" data-toggle="collapse" data-target="#categorycollapse">
                <img src="files/system/svg/category.svg" class="cat-img">
                <img src="files/system/svg/category.svg" class="filter">
                <div class="cat-word-box">
                    <span>category</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <!-- class="collapse"-->
            <div id="categorycollapse" class="collapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li">
                    <a href="/panel/user/list/page/1" class="cat-link">users</a>
                    <span>user list</span>
                </li>
            </div>
        </ul>

        <!--  -->
        <ul class="cat-btn-ul">
            <li class="cat-btn-li" data-toggle="collapse" data-target="#servicecollapse">
                <img src="files/system/svg/usd.png" class="cat-img">
                <img src="files/system/svg/usd.png" class="filter">
                <div class="cat-word-box">
                    <span>service</span>
                </div>
                <span class="cat-circle"></span>
            </li>
            <!-- class="collapse"-->
            <div id="servicecollapse" class="collapse" aria-labelledby="headingone" data-parent="#category">
                <li class="cat-li">
                    <a href="/panel/payment/list/page/1" class="cat-link">payments</a>
                    <span>payment list</span>
                </li>
                <li class="cat-li">
                    <a href="/panel/product/list" class="cat-link">product</a>
                    <span>product list</span>
                </li>
                <li class="cat-li">
                    <a href="/panel/sale/list/page/1" class="cat-link">sale</a>
                    <span>sale list</span>
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
