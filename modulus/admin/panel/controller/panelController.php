<?php 

namespace modulus\admin\panel\controller;
use modulus\admin\panel\model\panelModel;
use core\controller;

class panelController extends controller
{
    public $panel;
    
    public function __construct()
    {
        $this->panel = new panelModel();
    }

    public function panelInfo($core = false)
    {
        $this->layout('panel', 'admin', 'panel', 'panel', []);
    }
}

