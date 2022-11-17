<?php 

namespace modulus\main\product\controller;
use modulus\main\product\model\productModel;
use core\controller;

class productController extends controller
{
    public $product;
    
    public function __construct()
    {
        $this->product = new productModel();
    }

    public function productInfo($product_type, $product_token)
    {
        $this->layout('main', 'main', 'product', 'info', [
            'product' => $this->product->productInfo($product_type, $product_token)
        ]);
    }
}
