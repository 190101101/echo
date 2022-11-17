<div class="table_content">
    <table class="table-media">
        <thead>
            <tr>
                <th>
                    <img src="<?php echo SVG; ?>delete.svg">
                </th>
                <th>
                    <img src="<?php echo SVG; ?>update.svg">
                </th>
                <th>id</th>
                <th>token</th>
                <th>status</th>
                <th>level</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->user as $user): ?>
            <tr>
                <td aria-label='delete'>
                    <a data-get="/panel/user/delete/<?php echo $user->user_id; ?>" 
                        class="data-delete" data-render="userDelete">
                        <img src="<?php echo SVG; ?>delete.svg">
                    </a>
                </td>
                <td aria-label='update'>
                    <a data-load="/panel/user/update/<?php echo $user->user_id; ?>" class="load_btn"
                        data-id="<?php echo $user->user_id; ?>">
                        <img src="<?php echo SVG; ?>update.svg">
                    </a>
                </td>
                <td aria-label='id'># <?php echo $user->user_id; ?></td>
                <td aria-label='token'><?php echo $user->user_token; ?></td>
                <td aria-label='status'>
                    <label class="switch">
                    <input type="checkbox" class="data-status" data-render="userStatus"
                        <?php echo $user->user_level != 99 ?: 'disabled'; ?>
                        data-get="/panel/user/status/<?php echo $user->user_id; ?>" 
                        <?php echo $user->user_status == 1 ? 'checked' : NULL; ?> > 
                    <span class="slider round"></span>
                    </label>
                </td>
                <td aria-label='level'><?php echo $user->user_level; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
   
    <!-- paginator -->
    <section id="paginator">
        <div class="paginator_box">
            <a href="/panel/user/list/page/1">НАЧАЛО</a>
            <?php \library\pagination::selector($data->page, 'panel/user/list/'); ?>
            <a href="/panel/user/list/page/<?php echo $data->page->length ? $data->page->length : 1; ?>">КОНЕЦ</a>
       </div>
    </section>
    <!-- paginator -->

</div>

<script>
    $('.history_btn').on('click', function(){
        load_create_form('/panel/user/create');
    });  

    $('.search-btn').on('click', function(){
        load_search_form('/panel/user/search');
    });
</script>
