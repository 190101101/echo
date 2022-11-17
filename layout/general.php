<?php $main = new core\controller; ?>
<!doctype html>
<html lang="en">
    <head>
        <?php $main->view('main', 'requires', 'main/meta'); ?>
        <?php $main->view('main', 'requires', 'main/css'); ?>
    </head>
    <body id="body">
        <div id="wrapper">
            <?php $main->view('main', 'requires', 'main/navbar'); ?>
            <div class="wrap">
                <div class="main_content">
                    <div class="inner_content">
                        <?php $main->view('main', 'requires', 'main/sidebar'); ?>
                        <div class="page_content">
                            <div class="page_head">
                                <?php echo breadcump(); ?>
                                <?php has_notice(); ?>
                            </div>
                        <?php echo $data['VIEW']; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php $main->view('main', 'requires', 'main/js'); ?>
    </body>
</html>