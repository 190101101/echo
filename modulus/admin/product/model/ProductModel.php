<?php 

namespace modulus\admin\product\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;

class productModel extends model
{
    public function productList()
    {
        return $this->db->t1where('product', "product_id > 0 ORDER BY product_id DESC", [], 2);
    }

    public function __productCreate()
    {
        $data = peel_tag_array($_POST);

        $v = new v($data);

        $v->rule('required', [
            'product_token',
            'product_level',
        ]);

        $v->rule('lengthMin', 'product_token', 26);
        $v->rule('lengthMax', 'product_token', 28);

        $v->rule('min', 'product_level', 1);
        $v->rule('max', 'product_level', 4);

        error::jsonvalitron($v);

        $data += ['product_status' => 1];

        $product = $this->db->t1where('product', 'product_token=?', [
            $data['product_token']
        ]);

        !$product ?: $this->return->code(300)->return('already_have')->json();

        $return = $this->db->create('product', $data, 1);

        $product = $this->db->t1where('product', 'product_id=?', [$return['id']]);

        $return['status'] == TRUE 
            ? $this->return->code(200)->return('success')->data(['product' => $product])->json()
            : $this->return->code(404)->return('error')->json();
    }

    public function _productUpdate($id)
    {
        $product = $this->db->t1where('product', 'product_id=?', [$id]);
        return $product ? $product : exit;
    }

    public function __productUpdate()
    {
        $data = peel_tag_array($_POST);

        $v = new v($data);

        $v->rule('required', [
            'product_token',
            'product_id',
        ]);

        error::jsonvalitron($v);

        $product = $this->db->t1where('product', 'product_token=? && product_id != ?', [
            $data['product_token'], $data['product_id']
        ]);

        !$product ?: $this->return->code(300)->return('already_have')->json();

        $data += ['product_updated' => date('Y-m-d H:i:s')];

        $return = $this->db->update('product', $data, [
            'id' => 'product_id',
        ]);

        $product = $this->db->t1where('product', 'product_id=?', [
            $data['product_id']
        ]);

        $return['status'] == TRUE 
            ? $this->return->code(200)->return('success')->data(['product' => $product])->json()
            : $this->return->code(404)->return('error')->json();
    }

    public function productStatus($product_id)
    {
        $product = $this->db->t1where('product', 'product_id=?', [$product_id]);

        $product ?: $this->return->code(300)->return('not_found')->json();

        $update = $this->db->update('product', [
            'product_id' => $product->product_id,
            'product_status' => $product->product_status == 1 ? 0 : 1
        ], ['id' => 'product_id']);

        $update['status'] == TRUE
            ? $this->return->code(200)->return('status_success')->json()
            : $this->return->code(404)->return('status_error')->json();
    }

    public function productDelete($id)
    {
        $product = $this->db->t1where('product', 'product_id=?', [$id]);

        $product ?: $this->return->code(404)->return('not_found')->json();

        $product->product_level < 99 ?: $this->return->code(404)->return('error')->json();

        $return = $this->db->delete('product', [
            'product_id' => $product->product_id
        ], ['id' => 'product_id']);

        $return['status'] == TRUE
            ? $this->return->code(200)->return('deleted')->json()
            : $this->return->code(404)->return('error')->json();
    }

    public function __productSearch()
    {
        #
        $data = peel_tag_array($_POST);

        $v = new v($data);

        $v->rule('required', [
            'search',
        ]);

        $v->rule('contains', 'search', ':');
        $v->rule('lengthMin', 'search', 5);
        $v->rule('lengthMax', 'search', 50);

        error::jsonvalitron($v);

        #
        $explode = explode(':', $data['search']);
        $key = trim($explode[0]);
        $value = trim($explode[1]);

        $array = [];
        $array += ['key' => $key];
        $array += ['value' => $value];

        $v = new v($array);

        $v->rule('required', [
            'key',
            'value',
        ]);

        $v->rule('lengthMin', 'key', 2);
        $v->rule('lengthMax', 'key', 20);

        $v->rule('lengthMin', 'value', 1);
        $v->rule('lengthMax', 'value', 30);

        error::jsonvalitron($v);

        #
        $columns = $this->db->columns('product');

        if(in_array("product_{$key}", $columns) === FALSE){
            $this->return->code(404)->return('error')->json();
        }

        #
        $product = $this->db->sql("
            SELECT * FROM product WHERE
            product_{$key} LIKE '%{$value}%'
            ORDER BY product_id DESC
        ", 2, 1);

        $product ?: $this->return->code(300)->return('not_found')->json();

        #
        $ids = getIn($product, 'product_id');
        $product = $this->db->t1wherein('product', 'product_id', $ids, 2);

        $product 
            ? $this->return->code(200)->data(['product' => $product])->json()
            : $this->return->code(300)->return('not_found')->json();
    }
}
