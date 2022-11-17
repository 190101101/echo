<script src="<?php echo GENERAL_JS; ?>alertify.min.js"></script>
<script src="<?php echo GENERAL_JS; ?>popper.min.js"></script>
<script src="<?php echo GENERAL_JS; ?>bootstrap.min.js"></script>
<script src="<?php echo GENERAL_JS; ?>general.js"></script>
<script src="<?php echo AUTH_JS; ?>auth.js"></script>
<script src="<?php echo MAIN_JS; ?>ajaxGet.js"></script>
<script src="<?php echo MAIN_JS; ?>ajaxPost.js"></script>
<script src="<?php echo MAIN_RENDER; ?>renderGet.js"></script>
<script src="<?php echo MAIN_RENDER; ?>renderPost.js"></script>

<?php if(isset($_SESSION['message'])) : ?>
    <script type="text/javascript">
        messageManagement(<?php echo json_encode($_SESSION['message']); ?>);
    </script>
    <?php unset($_SESSION['message']); ?>
<?php endif; ?>
