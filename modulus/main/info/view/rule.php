<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a class="active">
                <span>rule</span>
            </a>
        </li>
        <li>
            <a href="/information/question">
                <span>question</span>
            </a>
        </li>
    </ul>
</div>

<?php if(user_level() < 2): ?>
    <!-- <a href="/profile/agreement" class="btn btn-sm btn-outline-success text-white"  -->
    <a data-get="/profile/agreement" data-render="ruleAgree" class="data-get btn btn-sm btn-outline-success text-white" 
    style="color: var(--green-clr); width: 100%;">
        <span class="text-white"> I accept all conditions </span>
    </a>
<?php endif; ?>

<div class="table_content mt-2">
    <h1>rule page</h1>
    <table id="page" class="table-media horizontal no-table">
        <thead>
            <tr>
                <th>#</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 0; foreach($data->rule as $rule): ?>
            <tr>
                <td aria-label="#<?php echo ++$i; ?>">
                    <span style="padding-left: 5px;">
                        <?php echo $rule->rule_text; ?>
                    </span>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
