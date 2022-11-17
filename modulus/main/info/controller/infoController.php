<?php 

namespace modulus\main\info\controller;
use modulus\main\info\model\infoModel;
use core\controller;

class infoController extends controller
{
    public $info;
    
    public function __construct()
    {
        $this->info = new infoModel();
    }

    public function infoAbout()
    {
        $this->layout('main', 'main', 'info', 'about', []);
    }

    public function infoRule()
    {
        $this->layout('main', 'main', 'info', 'rule', [
            'rule' => $this->info->infoRule()
        ]);
    }

    public function infoQuestion()
    {
        $this->cache('main', 'main', 'info', 'question', [
            'question' => $this->info->infoQuestion()
        ]);
    }
}

