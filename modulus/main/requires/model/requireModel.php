<?php 

namespace modulus\main\requires\model;
use core\model;

class requireModel extends model
{
    public function section()
    {
        return $this->db->t1where('section', 'section_status=1', [], 2);
    }
}
