<?php 

namespace modulus\admin\user\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;

class userModel extends model
{
	public function UserCount()
    {
        return count($this->db->sql("SELECT user_id FROM user ORDER BY user.user_id DESC", 2));
    }

    public function UserList($start, $limit)
    {
        return $this->db->t1where('user', "user_id > 0  ORDER BY user_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    public function __UserCreate()
    {
        $data = peel_tag_array($_POST);

        $v = new v($data);

        $v->rule('required', [
            'user_token',
            'user_level',
        ]);

        $v->rule('lengthMin', 'user_token', 26);
        $v->rule('lengthMax', 'user_token', 28);

        $v->rule('min', 'user_level', 1);
        $v->rule('max', 'user_level', 4);

        error::jsonvalitron($v);

        $data += ['user_status' => 1];

        $user = $this->db->t1where('user', 'user_token=?', [
            $data['user_token']
        ]);

        !$user ?: $this->return->code(300)->return('already_have')->json();

        $return = $this->db->create('user', $data, 1);

        $user = $this->db->t1where('user', 'user_id=?', [$return['id']]);

        $return['status'] == TRUE 
            ? $this->return->code(200)->return('success')->data(['user' => $user])->json()
            : $this->return->code(404)->return('error')->json();
    }

    public function _userUpdate($id)
    {
        $user = $this->db->t1where('user', 'user_id=?', [$id]);
        return $user ? $user : exit;
    }

    public function __userUpdate()
    {
        $data = peel_tag_array($_POST);

        $v = new v($data);

        $v->rule('required', [
            'user_token',
            'user_id',
        ]);

        error::jsonvalitron($v);

        $user = $this->db->t1where('user', 'user_token=? && user_id != ?', [
            $data['user_token'], $data['user_id']
        ]);

        !$user ?: $this->return->code(300)->return('already_have')->json();

        $data += ['user_updated' => date('Y-m-d H:i:s')];
        $data += ['user_microtime' => microtime(TRUE)];

        $return = $this->db->update('user', $data, [
            'id' => 'user_id',
        ]);

        $user = $this->db->t1where('user', 'user_id=?', [
            $data['user_id']
        ]);

        $return['status'] == TRUE 
            ? $this->return->code(200)->return('success')->data(['user' => $user])->json()
            : $this->return->code(404)->return('error')->json();
    }

    public function userStatus($user_id)
    {
        $user = $this->db->t1where('user', 'user_id=?', [$user_id]);

        $user ?: $this->return->code(300)->return('not_found')->json();
        $user->user_level < 99 ?: $this->return->code(300)->return('forbidden')->json();

        $update = $this->db->update('user', [
            'user_id' => $user->user_id,
            'user_status' => $user->user_status == 1 ? 0 : 1
        ], ['id' => 'user_id']);

        $update['status'] == TRUE
            ? $this->return->code(200)->return('status_success')->json()
            : $this->return->code(404)->return('status_error')->json();
    }

    public function userDelete($id)
    {
        $user = $this->db->t1where('user', 'user_id=?', [$id]);

        $user ?: $this->return->code(404)->return('not_found')->json();

        $user->user_level < 99 ?: $this->return->code(404)->return('error')->json();

        $return = $this->db->delete('user', [
            'user_id' => $user->user_id
        ], ['id' => 'user_id']);

        $return['status'] == TRUE
            ? $this->return->code(200)->return('deleted')->json()
            : $this->return->code(404)->return('error')->json();
    }

    public function __userSearch()
    {
        #
        $data = peel_tag_array($_POST);

        $v = new v($data);

        $v->rule('required', [
            'search',
        ]);

        $v->rule('contains', 'search', ':');
        $v->rule('lengthMin', 'search', 5);
        $v->rule('lengthMax', 'search', 50);

        error::jsonvalitron($v);

        #
        $explode = explode(':', $data['search']);
        $key = trim($explode[0]);
        $value = trim($explode[1]);

        $array = [];
        $array += ['key' => $key];
        $array += ['value' => $value];

        $v = new v($array);

        $v->rule('required', [
            'key',
            'value',
        ]);

        $v->rule('lengthMin', 'key', 2);
        $v->rule('lengthMax', 'key', 20);

        $v->rule('lengthMin', 'value', 1);
        $v->rule('lengthMax', 'value', 30);

        error::jsonvalitron($v);

        #
        $columns = $this->db->columns('user');

        if(in_array("user_{$key}", $columns) === FALSE){
            $this->return->code(404)->return('error')->json();
        }

        #
        $user = $this->db->sql("
            SELECT * FROM user WHERE
            user_{$key} LIKE '%{$value}%'
            ORDER BY user_id DESC
        ", 2, 1);

        $user ?: $this->return->code(300)->return('not_found')->json();

        #
        $ids = getIn($user, 'user_id');
        $user = $this->db->t1wherein('user', 'user_id', $ids, 2);

        $user 
            ? $this->return->code(200)->data(['user' => $user])->json()
            : $this->return->code(300)->return('not_found')->json();
    }
}
