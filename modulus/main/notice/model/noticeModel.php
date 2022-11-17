<?php 

namespace modulus\main\notice\model;
use core\model;
use \library\message;
use \library\session;
use \library\cookie;

class noticeModel extends model
{
    public function notification()
    {
    	$session = session::read('notice');
		session::delete('notice');
		return $session;
    }    

    public function notice()
    {
        return $this->db->t1where('notice', 'user_id=? && notice_status = 0 
            ORDER BY notice_id DESC LIMIT 10', [user_id()], 2);
    }

    public function save()
    {
        if(notification()){
            $session = session::read('notice');
            $session->user_id = user_id();
            $this->db->create('notice', (array) $session);
        }
    }
}
