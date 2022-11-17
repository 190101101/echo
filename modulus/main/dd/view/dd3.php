<?php 

$file = "../tmp/cache/".md5("dd").".html";
$lorem = '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus illo ex quo dignissimos quas laborum optio dolor, cupiditate magni praesentium maxime animi reprehenderit similique blanditiis, commodi nesciunt corrupti temporibus porro</p>';
$date = date('y-m-d H:i:s');

function createContent($file){
    $content = fopen($file, 'w');
    fwrite($content, ob_get_contents());
    fclose($content);
}

if(file_exists($file) && (time() - 5 > filemtime($file))){

    ob_start();

    ?>

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


    <?php 

    createContent($file);
    ob_end_flush();

} else if(!file_exists($file)){

    ob_start();

    echo "<h2>{$date} | create</h2>";

    for($i = 0; $i < rand(2, 5); $i++){
        echo $lorem;    
    }

    createContent($file);
    ob_end_flush();
}else{
    echo "<h2>cache</h2>";

    include($file);   
}