<?php 

namespace library;
use \library\cookie;
use \library\session;

class Auth
{
    public static function cheek()
    {
        !session::has('user') 
            ?  cookie::has('user') 
                ? REDIRECT('auth/cheek/'.json_decode(cookie::read('user'))->user_token) 
                    : null
        : null;
    }
}