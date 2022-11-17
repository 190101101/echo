<?php 

namespace modulus\main\notice\controller;
use modulus\main\notice\model\noticeModel;
use core\controller;

class noticeController extends controller
{
    public $notice;
    
    public function __construct()
    {
        $this->notice = new noticeModel();
    }

    public function notification()
    {
        $this->notice->save();
        
        $this->layout('main', 'main', 'notice', 'notice', [
            'notification' => $this->notice->notification(),
            'notice' => $this->notice->notice(),
        ]);
    }

    public function logout(){
        $this->notice->logout();
        
    }
}

