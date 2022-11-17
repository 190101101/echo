<?php 

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

        if(in_array("service_{$key}", $columns) === FALSE){
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