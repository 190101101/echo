<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a href="/information/rule">
                <span>rule</span>
            </a>
        </li>
        <li>
            <a class="active">
                <span>question</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <h1>question page</h1>
    <table id="page" class="table-media horizontal no-table">
        <thead>
            <tr>
                <th>#</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($data->question as $question): ?>
            <tr>
                <td aria-label="# <?php echo $question->question_id; ?>">
                    <details title='click me'>
                        <summary>
                            <?php echo $question->question_text; ?>
                        </summary>
                        <span style="color: var(--green-clr);">
                            <?php echo $question->question_answer; ?>
                        </span>
                    </details>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>