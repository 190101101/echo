<?php 

namespace modulus\admin\textbelt\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;

class textbeltModel extends model
{
    #
    public function TextCount()
    {
        return count($this->db->sql("
            SELECT sms_id FROM textbelt_sms 
            ORDER BY sms_id DESC", 2));
    }

    public function TextList($start, $limit)
    {
        return $this->db->t1where('textbelt_sms', "sms_id > 0 ORDER BY sms_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    #
    public function TextRead($sms_id)
    {
        return $this->db->t1where('textbelt_sms', "sms_id=?", [$sms_id]);
    }

    public function __TextSearch()
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
        $columns = $this->db->columns('textbelt_sms');

        if(in_array("sms_{$key}", $columns) === FALSE){
            $this->return->code(404)->return('error')->json();
        }

        #
        $textbelt_sms = $this->db->sql("
            SELECT * FROM textbelt_sms WHERE
            sms_{$key} LIKE '%{$value}%'
            ORDER BY sms_id DESC
        ", 2, 1);

        $textbelt_sms ?: $this->return->code(300)->return('not_found')->json();

        #
        $ids = getIn($textbelt_sms, 'sms_id');
        $textbelt_sms = $this->db->t1wherein('textbelt_sms', 'sms_id', $ids, 2);

        $textbelt_sms 
            ? $this->return->code(200)->data(['textbelt_sms' => $textbelt_sms])->json()
            : $this->return->code(300)->return('not_found')->json();
    }

    #
    public function ChannelCount()
    {
        return count($this->db->sql("
            SELECT channel_id FROM textbelt_channel 
            ORDER BY channel_id DESC", 2));
    }

    public function ChannelList($start, $limit)
    {
        return $this->db->t1where('textbelt_channel', "channel_id > 0 ORDER BY channel_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    #
    public function TunnelCount()
    {
        return count($this->db->sql("
            SELECT tunnel_id FROM textbelt_tunnel 
            ORDER BY tunnel_id DESC", 2));
    }

    public function TunnelList($start, $limit)
    {
        return $this->db->t1where('textbelt_tunnel', "tunnel_id > 0 ORDER BY tunnel_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    #
    public function textbeltToken()
    {
        return $this->db->t1where('textbelt_token', "token_id > 0 ORDER BY token_id", [], 2);
    }

    public function textbeltTokenStatus($token_id)
    {
        $textbelt_token = $this->db->t1where('textbelt_token', 'token_id=?', [$token_id]);

        $textbelt_token ?: $this->return->code(300)->return('not_found')->json();

        $update = $this->db->update('textbelt_token', [
            'token_id' => $textbelt_token->token_id,
            'token_status' => $textbelt_token->token_status == 1 ? 0 : 1
        ], ['id' => 'token_id']);

        $update['status'] == TRUE
            ? $this->return->code(200)->return('status_success')->json()
            : $this->return->code(404)->return('status_error')->json();
    }

    public function TextbeltTokenUpdate($token_id)
    {
        return $this->db->t1where('textbelt_token', 'token_id=?', [$token_id]);
    }

    public function __textbeltTokenUpdate()
    {
        ddx($_POST);
    }

    #
	public function CallerCount()
    {
        return count($this->db->sql("
            SELECT caller_id FROM textbelt_caller 
            ORDER BY caller_id DESC", 2));
    }

    public function CallerList($start, $limit)
    {
        return $this->db->t1where('textbelt_caller', "caller_id > 0 ORDER BY caller_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }
}
