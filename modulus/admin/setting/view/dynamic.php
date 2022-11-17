<div class="table_content">
    <table id="view" class="table-media">
        <thead>
            <tr>
                <th>desc</th>
                <th>key</th>
                <th>value</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->setting as $setting): ?>
            <tr>
                <td aria-label='desc'><?php echo $setting->setting_description; ?></td>
                <td aria-label='key'><?php echo $setting->setting_key; ?></td>
                <td aria-label='value'><?php echo $setting->setting_value; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
