<?php 

namespace modulus\admin\user\controller;
use modulus\admin\user\model\userModel;
use core\controller;
use \library\pagination as p;

class userController extends controller
{
    public $user;
    
    public function __construct()
    {
        $this->user = new userModel();
        $this->p = new p();
    }

    public function UserList()
    {
        $this->layout('admin', 'admin', 'user', 'list', [
            'page' => $p = $this->p->page($this->user->UserCount(), 8),
            'user' => $this->user->UserList($p->start, $p->limit)
        ]);
    }

    public function UserCreate()
    {
        $this->view('admin', 'user', 'create', []);
    }

    public function __UserCreate()
    {
        $this->user->__UserCreate();
    }

    public function _userUpdate($id)
    {
        $this->view('admin', 'user', 'update', (object) [
            'user' => $this->user->_userUpdate($id)
        ]);
    }

    public function __userUpdate()
    {
        $this->user->__userUpdate();
    }

    public function userDelete($id)
    {
        $this->user->userDelete($id);
    }

    public function userStatus($user_id)
    {
        $this->user->userStatus($user_id);
    }

    public function userSearch()
    {
        $this->view('admin', 'user', 'search');
    }

    public function __userSearch()
    {
        $this->user->__userSearch();
    }
}

