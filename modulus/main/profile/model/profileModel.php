<?php 

namespace modulus\main\profile\model;
use core\model;
use \library\session;

class profileModel extends model
{
    public function userData()
    {
        return $this->db->t1where('user', 'user_id=?', [user_id()]);
    }

    public function profileAgreement()
    {
        user_level() < 2 ?: $this->return->code(300)->return('error')->json();

        $user_level = user_level() > 2 ? user_level() : user_level() + 1;

    	$update = $this->db->update('user', [
    		'user_id' => user_id(),
            'user_level' => $user_level,
    		'user_status' => 1
    	], ['id' => 'user_id']);

    	session::update('user', [
            'user_level' => $user_level,
    		'user_status' => 1
    	]);

        $this->return->code(200)->return('user_agreement')->json();
    }

    public function contactList()
    {
        return $this->db->t1where('contact', 'user_id=?', [user_id()], 2);
    }

}
