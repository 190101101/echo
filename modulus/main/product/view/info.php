<?php $product = $data->product; ?>
<div class="table_content_head">
    <ul class="nav nav-tab">
        <li>
            <a>
                <span>product info</span>
            </a>
        </li>
    </ul>
</div>
<div class="table_content">
    <div class="card text-center bg-transparent border-success mb-1">
        <div class="card-header border-success text-success">
            <p><?php echo $product->product_description; ?></p>
        </div>
        <div class="p-3 card_body border-success text-success">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quaerat, sint impedit, in beatae sunt suscipit aperiam eaque esse. Hic, repellendus dolore facilis! Voluptatem adipisci neque optio quae animi error modi, delectus fuga, quidem asperiores rem blanditiis odit omnis praesentium, deleniti totam. Quidem exercitationem magnam incidunt, non repudiandae amet iusto beatae impedit, sint. Dignissimos, beatae doloribus quo hic, nihil possimus harum. Neque, accusantium quasi ad! Illo molestias ratione corrupti mollitia magnam, obcaecati quas aperiam eligendi ullam est at, minus laboriosam ea reiciendis amet assumenda sint. Repudiandae dicta totam voluptates amet quidem, necessitatibus, quas quae asperiores fuga incidunt. Ea inventore quae quisquam?
        </div>
    </div>
    <!-- <a href="/services/product/buy/<?php echo $product->product_type; ?>/<?php echo $product->product_token; ?>"  -->
    <a data-get="/services/product/buy/<?php echo $product->product_type; ?>/<?php echo $product->product_token; ?>" data-render="textBuy" 
        style="width: 100%;" class="data-get btn btn-outline-success text-white mb-3">
        click to buy now
    </a>
</div>


            