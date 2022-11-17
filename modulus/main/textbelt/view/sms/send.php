<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a class="active">
                <span>sms</span>
            </a>
        </li>
        <li>
            <a href="/sms/text/list">
                <span>list</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <!-- <form action="/sms/text/send" method="POST" class="general_form"> -->
    <form data-post="/sms/text/send" data-render="textSendSms" method="POST" class="general_form data-post">
        <div class="form_box">
            <label>phone number</label>
            <input 
                type="text" 
                name="sms_recipient" 
                value="994<?php echo rand(50, 51)?><?php echo rand(200, 999).rand(10, 99).rand(10, 99); ?>"
                required>
        </div>
        <div class="form_box">
            <textarea type="text"
                name="sms_text" 
                required>Wake up Neo... Matrix has you...</textarea> 
        </div>
        <div class="form_box">
            <button>send</button>
        </div>
    </form>
</div>


