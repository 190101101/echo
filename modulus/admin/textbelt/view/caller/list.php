<div class="table_content">
    <table class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>data</th>
                <th>type</th>
                <th>time</th>
                <th>microtime</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->textbelt as $textbelt): ?>
            <tr>
                <td aria-label='id'># <?php echo $textbelt->caller_id; ?></td>
                <td aria-label='data'><?php echo $textbelt->caller_data; ?></td>
                <td aria-label='type'><?php echo $textbelt->caller_type; ?></td>
                <td aria-label='time'><?php echo $textbelt->caller_time; ?></td>
                <td aria-label='microtime'><?php echo $textbelt->caller_microtime; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
   
    <!-- paginator -->
    <section id="paginator">
        <div class="paginator_box">
            <a href="/panel/textbelt/caller/list/page/1">НАЧАЛО</a>
            <?php \library\pagination::selector($data->page, 'panel/textbelt/caller/list/'); ?>
            <a href="/panel/textbelt/caller/list/page/<?php echo $data->page->length ? $data->page->length : 1; ?>">КОНЕЦ</a>
       </div>
    </section>
    <!-- paginator -->
</div>

