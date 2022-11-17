<?php 

namespace modulus\main\service\model;
use core\model;
use \library\session;

class serviceModel extends model
{
    public function ServiceProduct()
    {
        return $this->db->t1('product', 2);
    }

    public function ServiceUsed()
    {
        return $this->db->t1where('sale', 'user_id=? ORDER BY sale_id DESC LIMIT 50', [user_id()], 2);
    }
}
