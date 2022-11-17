<?php 

namespace modulus\auth\auth\controller;
use modulus\auth\auth\model\authModel;
use core\controller;
use library\cookie;

class authController extends controller
{
    public $auth;
    
    public function __construct()
    {
        $this->auth = new authModel();
    }

    public function auth()
    {
        $this->layout('auth', 'auth', 'auth', 'auth', []);
    }

    public function __auth()
    {
        $this->auth->__auth();
    }

    public function _logout()
    {
        $this->auth->_logout();
    }

    public function authCheek($token)
    {
        $this->auth->authCheek($token);
    }

    public function authReferral($token)
    {
        $this->auth->authReferral($token);
    }
}

