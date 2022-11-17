<?php 

namespace modulus\admin\Setting\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;

class SettingModel extends model
{
    public function SettingList($type)
    {
        return $this->db->t1where('setting', 'setting_type=?', [$type], 2);
    }
}
