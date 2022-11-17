<?php 

namespace modulus\admin\payment\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;

class paymentModel extends model
{
	public function paymentCount()
    {
        return count($this->db->sql("
            SELECT payment_id FROM payment 
            ORDER BY payment.payment_id DESC", 2));
    }

    public function paymentList($start, $limit)
    {
        return $this->db->t1where('payment', "payment_id > 0 ORDER BY payment_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    public function __paymentSearch()
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
        $columns = $this->db->columns('payment');

        $key = $key == 'user' ? 'user_id' : 'payment_'.$key;

        if(in_array($key, $columns) === FALSE){
            $this->return->code(404)->return('error')->json();
        }

        #
        $payment = $this->db->sql("
            SELECT * FROM payment WHERE 
            {$key} LIKE '%{$value}%'
            ORDER BY payment_id DESC
        ", 2, 1);

        $payment ?: $this->return->code(300)->return('not_found')->json();

        #
        $ids = getIn($payment, 'payment_id');
        $payment = $this->db->t1wherein('payment', 'payment_id', $ids, 2);

        $payment 
            ? $this->return->code(200)->data(['payment' => $payment])->json()
            : $this->return->code(300)->return('not_found')->json();
    }
}
