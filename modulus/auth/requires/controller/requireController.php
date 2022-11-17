<?php 

namespace modulus\auth\requires\controller;
use modulus\auth\requires\model\requireModel;
use core\controller;

class requireController extends controller
{
    public $require;
    
    public function __construct()
    {
        $this->require = new requireModel();
    }
}

