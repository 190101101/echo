<?php 

namespace modulus\main\profile\controller;
use modulus\main\profile\model\profileModel;
use core\controller;

class profileController extends controller
{
    public $profile;
    
    public function __construct()
    {
        $this->profile = new profileModel();
    }

    public function profileInfo()
    {
        $this->layout('main', 'main', 'profile', 'profile', [
            'user' => $this->profile->userData()
        ]);
    }

    public function profileAgreement()
    {
        $this->profile->profileAgreement();
    }

    public function contactList()
    {
        $this->layout('main', 'main', 'profile', 'contact', [
            'contact' => $this->profile->contactList()
        ]);
    }

}

