<?php 

namespace modulus\admin\product\controller;
use modulus\admin\product\model\productModel;
use core\controller;
use \library\pagination as p;

class productController extends controller
{
    public $product;
    
    public function __construct()
    {
        $this->product = new productModel();
    }

    public function productList()
    {
        $this->layout('dynamic', 'admin', 'product', 'list', [
            'product' => $this->product->productList()
        ]);
    }

    public function productCreate()
    {
        $this->view('admin', 'product', 'create', []);
    }

    public function __productCreate()
    {
        $this->product->__productCreate();
    }

    public function _productUpdate($id)
    {
        $this->view('admin', 'product', 'update', (object) [
            'product' => $this->product->_productUpdate($id)
        ]);
    }

    public function __productUpdate()
    {
        $this->product->__productUpdate();
    }

    public function productDelete($id)
    {
        $this->product->productDelete($id);
    }

    public function productStatus($product_id)
    {
        $this->product->productStatus($product_id);
    }
}

