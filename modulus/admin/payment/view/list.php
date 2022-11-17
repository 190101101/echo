<div class="table_content">
    <table class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>token</th>
                <th>amount</th>
                <th>created</th>
                <th>user_id</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->payment as $payment): ?>
            <tr>
                <td aria-label='id'># <?php echo $payment->payment_id; ?></td>
                <td aria-label='token'><?php echo $payment->payment_token; ?></td>
                <td aria-label='amount'><?php echo $payment->payment_amount; ?>$</td>
                <td aria-label='created'><?php echo $payment->payment_created; ?></td>
                <td aria-label='user id'><?php echo $payment->user_id; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
   
    <!-- paginator -->
    <section id="paginator">
        <div class="paginator_box">
            <a href="/panel/payment/list/page/1">НАЧАЛО</a>
            <?php \library\pagination::selector($data->page, 'panel/payment/list/'); ?>
            <a href="/panel/payment/list/page/<?php echo $data->page->length ? $data->page->length : 1; ?>">КОНЕЦ</a>
       </div>
    </section>
    <!-- paginator -->

</div>

<script>
    $('.search-btn').on('click', function(){
        load_search_form('/panel/payment/search');
    });
</script>
