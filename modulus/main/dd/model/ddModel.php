<?php 

namespace modulus\main\dd\model;
use core\model;

class ddModel extends model
{
	public function dd()
    {
        return $this->db->t1('code', 2);
    }
}
