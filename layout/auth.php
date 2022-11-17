<?php $main = new core\controller; ?>
<!doctype html>
<html lang="en">
    <head>
        <?php $main->view('auth', 'requires', 'auth/meta'); ?>
        
        <?php $main->view('auth', 'requires', 'auth/css'); ?>
    </head>
    <body id="body">
        <div id="wrapper">
            <div class="wrap">
                <div class="auth_content">
                    <div class="inner_content">
                        <?php echo $data['VIEW']; ?>
                    </div>
                    <?php $main->view('auth', 'requires', 'auth/sidebar'); ?>
                </div>
            </div>
        </div>

        <?php $main->view('auth', 'requires', 'auth/js'); ?>
    </body>
</html>