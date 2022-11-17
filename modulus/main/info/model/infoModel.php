<?php 

namespace modulus\main\info\model;
use core\model;
use \library\message;

class infoModel extends model
{	
    public function infoRule()
    {
        return $this->db->t1('rule',2);
    }

    public function infoQuestion()
    {
        return $this->db->t1('question', 2);
    }
}
