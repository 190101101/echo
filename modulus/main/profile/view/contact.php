<?php $contact = $data->contact; ?>
<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a href='profile/info'>
                <span>info</span>
            </a>
        </li>
        <li>
            <a class="active">
                <span>contact</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <table class="table-media">
        <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>number</th>
                <th>
                    <img src="<?php echo SVG; ?>update.svg">
                </th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->contact as $contact): ?>
            <tr>
                <td aria-label='id'><?php echo $contact->contact_id; ?></td>
                <td aria-label='name'><?php echo $contact->contact_name; ?></td>
                <td aria-label='number'><?php echo $contact->contact_number; ?></td>
                <td aria-label='update'> <a href="/"> send sms </a> </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>