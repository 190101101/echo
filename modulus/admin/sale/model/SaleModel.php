<?php 

namespace modulus\admin\sale\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;

class saleModel extends model
{
    public function saleCount()
    {
        return count($this->db->sql("
            SELECT sale_id FROM sale ORDER BY sale_id DESC", 2));
    }

    public function saleList($start, $limit)
    {
        return $this->db->t1where('sale', "sale_id > 0 ORDER BY sale_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    public function __saleSearch()
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
        $columns = $this->db->columns('sale');

        if(in_array("sale_{$key}", $columns) === FALSE){
            $this->return->code(404)->return('error')->json();
        }

        #
        $sale = $this->db->sql("
            SELECT * FROM sale WHERE
            sale_{$key} LIKE '%{$value}%'
            ORDER BY sale_id DESC
        ", 2, 1);

        $sale ?: $this->return->code(300)->return('not_found')->json();

        #
        $ids = getIn($sale, 'sale_id');
        $sale = $this->db->t1wherein('sale', 'sale_id', $ids, 2);

        $sale 
            ? $this->return->code(200)->data(['sale' => $sale])->json()
            : $this->return->code(300)->return('not_found')->json();
    }
}
