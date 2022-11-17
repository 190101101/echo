<?php 

namespace library;
use \library\cookie;
use \library\SxGeo;

class Guest
{
    public static function counter()
    {
        if(cookie::has('user'))
        {
            $cookie = json_decode(cookie::read('user'));

            if($cookie->user_update < time()){
                
                $cookie->user_update = (time() + (60 * 10));
                
                cookie::create('user', json_encode($cookie));

                db()->update('user', [
                    'user_id' => $cookie->user_id,
                    'user_update' => $cookie->user_update,
                ], ['id' => 'user_id']);
            }
        }
    }
}
