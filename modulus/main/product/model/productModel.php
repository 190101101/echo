<?php 

namespace modulus\main\product\model;
use core\model;
use \library\session;

class productModel extends model
{
    public function productInfo($product_type, $product_token)
    {
        user_level() > 1 ?: 
            $this->return->code(200)
                ->return('statusless')->time(10)
                    ->get()->http('information/rule');

        return $this->db->t1where('product', 'product_token=?', [$product_token]) 
            ?: $this->return->http('services/product/list');
    }
}

