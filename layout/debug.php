<?php $main = new core\controller; ?>
<!doctype html>
<html lang="en">
    <head>
        <?php $main->view('main', 'requires', 'main/meta'); ?>
        
        <?php $main->view('main', 'requires', 'main/css'); ?>
    </head>
    <body id="body">
        <div id="wrapper">
            <div class="wrap">
                <div class="main_content">
                    <div class="inner_content">
                        <?php echo $data['VIEW']; ?>
                    </div>
                </div>
            </div>
        </div>
        
        <?php $main->view('main', 'requires', 'main/js'); ?>
    </body>
</html>