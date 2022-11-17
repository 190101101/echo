<?php 

namespace modulus\auth\auth\model;
use core\model;
use \library\session;
use \library\cookie;
use \library\error;
use \library\notice;
use \Valitron\Validator as v;

class authModel extends model
{
    public function __auth()
    {
        $http1 = 'auth';

        $form = ['user_token'];

        #determined url
        'http://'.HOST_REFERER() == REFERER() ?:
            $this->return->code(404)->return('error_request')->get()->http($http1);

        #array diff keys
        array_different($form, $_POST) ?: 
            $this->return->code(404)->return('error_form')->get()->http($http1);

        #peel tags of array
        $data = peel_tag_array($_POST);

        #check via valitron
        $v = new v($data);

        $v->rule('required', 'user_token');
        $v->rule('regex', 'user_token', '/^[a-zA-Z0-9]{26,28}$/');
        $v->rule('alphaNum', 'user_token');

        error::valitron($v, $http1);

        $user = $this->db->t1where('user', 'user_token=?', [$data['user_token']], 1);

        #if not found user
        if(!$user)
        {
            $user_create = $this->db->create('user', [
                'user_token' => $data['user_token'],
                'user_ip' => rand_ip(),
            ], 1);

            $user_create['status'] == TRUE ?:
                $this->return->code(300)->return('error')->get()->http();
            
            $user = $this->db->t1where('user', 'user_id=?', [$user_create['id']], 1);
        }

        $textbelt = $this->db->t1where('textbelt_user', 'textbelt_token=?', [$user['user_token']], 1);
        $user['textbelt_quota'] = $textbelt['textbelt_quota'] ? $textbelt['textbelt_quota'] : 0;

        cookie::create("user", json_encode([
            'user_token' => $user['user_token'],
        ]));

        session::create('user', $user);

        #unset variables
        unset($http1); unset($data); unset($_POST); unset($v); unset($user); unset($form);

        $this->return->code(200)->return('login')->get()->http();
    }

    public function authCheek($token)
    {
        $http1 = 'auth';

        $data = ['user_token' => remove_tags($token)];

        $v = new v($data);

        $v->rule('required', 'user_token');
        $v->rule('regex', 'user_token', '/^[a-zA-Z0-9]{26,28}$/');
        $v->rule('alphaNum', 'user_token');

        error::valitron($v, $http1);
        
        $user = $this->db->t1where('user', 'user_token=?', [$data['user_token']], 1);

        $textbelt = $this->db->t1where('textbelt_user', 'textbelt_token=?', [$user['user_token']], 1);
        
        $user['textbelt_quota'] = $textbelt['textbelt_quota'] ? $textbelt['textbelt_quota'] : 0;

        cookie::create("user", json_encode([
            'user_token' => $user['user_token'],
        ]));

        session::create('user', $user);

        unset($http1); unset($data); unset($v); unset($user); unset($form);

        !session::has('user') ?: REDIRECT();
    }
}
