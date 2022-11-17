<?php 

namespace modulus\main\Textbelt\model;
use core\model;
use \library\session;
use \library\error;
use \Valitron\Validator as v;

class TextbeltModel extends model
{
    public function TextBuy($product_type, $product_token)
    {
        $product_type == 'text' ?: $this->return->code(404)->return('error')->json();

        $this->db->trans();

        $user = session::read('user');

        $product = $this->db->t1where('product', 'product_token=? && product_type=?', [
            $product_token, 'text'
        ], 1);
        
        $product ?: $this->return->code(404)->return('error')->json();

        if($user['user_coin'] < $product['product_price'])
        {
            $this->return->code(404)->return('error')->json();
        }

        $textbelt_data = [
            'textbelt_token' => $user['user_token'],
            'textbelt_quota' => $product['product_price'] * 10,
        ];

        $user_data = [
            'user_id'      => $user['user_id'],
            'user_level'   => $user['user_level'] > 4 ? $user['user_level'] : 4,
            'user_coin'    => $user['user_coin']  -= $product['product_price'],
            'user_updated' => date('Y-m-d H:i:s')
        ];

        $update_user = $this->db->update('user', $user_data, ['id' => 'user_id']);

        $update_product = $this->db->update('product', [
            'product_id'   => $product['product_id'],
            'product_sold' => $product['product_sold'] += 1
        ], ['id' => 'product_id']);

        $create_sale = $this->db->create('sale', [
            'sale_name'  => $product['product_title'],
            'sale_type'  => $product['product_type'],
            'sale_price' => $product['product_price'],
            'product_id'    => $product['product_id'],
            'user_id'       => $user['user_id'],
        ]);

        $textbelt_user = $this->db->t1where('textbelt_user', 'textbelt_token=?', [$user['user_token']], 1);

        if($textbelt_user)
        {
            $textbelt_data += ['textbelt_id' => $textbelt_user['textbelt_id']];
            $textbelt_data['textbelt_quota'] += $textbelt_user['textbelt_quota'];

            $textbelt = $this->db->update('textbelt_user', $textbelt_data, ['id' => 'textbelt_id']);

        }else
        {
            $textbelt = $this->db->create('textbelt_user', $textbelt_data);
        }

        if(!$update_user['status'] || !$textbelt['status'] 
            || !$update_product['status'] || !$create_sale['status'])
        {
            $this->return->code(404)->return('error')->json();
        }

        session::update('user', [
            'textbelt_quota' => $textbelt_data['textbelt_quota'],
            'user_level'     => $user_data['user_level'],
            'user_coin'      => $user_data['user_coin'],
            'user_updated'   => $user_data['user_updated'],
        ]);

        $commit = $this->commit();

        if($commit)
        {
            $this->return->code(200)->return('success')->data([
                'textbelt_quota' => $textbelt_data['textbelt_quota'],
                'user_coin' => $user_data['user_coin'],
            ])->json();
        }
        else
        {
            $this->return->code(404)->return('error')->json();
        }
    }

    public function textSendSms()
    {
        $data = peel_tag_array($_POST);

        $v = new v($data);

        $v->rule('required', 'sms_recipient');
        $v->rule('required', 'sms_text');

        $v->rule('lengthMin', 'sms_recipient', 12);
        $v->rule('lengthMax', 'sms_recipient', 12);

        $v->rule('lengthMin', 'sms_text', 2);
        $v->rule('lengthMax', 'sms_text', 160);

        error::jsonvalitron($v);

        $textbelt = $this->db->t1where('textbelt_user', 'textbelt_token=? && textbelt_quota > 0', [user_token()], 1);

        $textbelt ?: $this->return->code(404)->return('error')->json();

        $this->db->trans();

        $update_textbelt = $this->db->update('textbelt_user', [
            'textbelt_id'    => $textbelt['textbelt_id'],
            'textbelt_quota' => $textbelt['textbelt_quota'] -= 1
        ], ['id' => 'textbelt_id']);

        $textbelt_token = $this->db->t1where('textbelt_token', 
            'token_type=? && token_status = 1 ORDER BY token_quota DESC', ['channel'], 1);

        $channel_data = [
            'channel_token' => substr($textbelt_token['token_code'], -5),
            'channel_recipient' => "+{$data['sms_recipient']}",
            'channel_text' => $data['sms_text'],
            'channel_created' => date('Y-m-d H:i:s'),
            'user_id' => user_id(),
        ];

        $create_channel = $this->db->create('textbelt_channel', $channel_data, 1);

        $update_token = $this->db->update('textbelt_token', [
            'token_id' => $textbelt_token['token_id'],
            'token_quota' => $textbelt_token['token_quota'] -= 1,
            'token_call' => 1,
            'token_microtime' => microtime(true)
        ], ['id' => 'token_id']);

        if(!$update_textbelt['status'] || !$create_channel['status'] || !$update_token['status']){
            $this->return->code(404)->return('error')->json();
        }

        $commit = $this->db->commit();

        session::update('user', ['textbelt_quota' => $textbelt['textbelt_quota']]);

        $channel_data += ['channel_id' => $create_channel['id']];

        $commit ? $this->return->code(200)->return('success')->data([
            'textbelt_quota' => $textbelt['textbelt_quota'],
            'channel_data' => $channel_data,
        ])->json() : $this->return->code(404)->return('error')->json();
    }

    public function textList()
    {
        return $this->db->t1where('textbelt_sms', 'user_id=? ORDER BY sms_id DESC LIMIT 50', [user_id()], 2);
    }

    public function ChannelCall()
    {
        $setting = $this->db->t1where('setting', 'setting_key=?', ['channel_call'], 1);
        
        if($setting['setting_value'] == 1)
        {
            ddx('server work');
        }

        $setting_update = $this->db->update('setting', [
            'setting_key' => 'channel_call',
            'setting_value' => 1,
            'setting_microtime' => microtime(TRUE)
        ], ['id' => 'setting_key']);

        $sleep = FALSE;
        $data = [];
        $start = microtime(TRUE);
        $counter_data = 0;

        while($textbelt_token = $this->db->t1where('textbelt_token', 'token_call=1', [], 1)){

            $sleep = $textbelt_token;

            $token_code = substr($textbelt_token['token_code'], -5);

            $channel_data = $this->db->t1where('textbelt_channel', 'channel_token=?', [
                $token_code
            ], 2, 1);

            $sms_data = [];
            
            if($channel_data){
                $unique_data = unique_multi_array($channel_data, 'channel_recipient');

                $counter_data += count($unique_data);

                foreach($unique_data as $channel){
                    /*CURL TO TEXTBELT*/
                    $sms_data[] = [
                        'sms_channel'   => $channel['channel_token'],
                        'sms_recipient' => $channel['channel_recipient'],
                        'sms_text'      => $channel['channel_text'],
                        'textId'        => rand(1000000, 10000000),
                        'user_id'       => $channel['user_id'],
                    ];
                }

                $store = $this->db->store('textbelt_sms', [
                    'sms_channel', 'sms_recipient', 
                    'sms_text', 'textId', 'user_id'
                ], $sms_data);

                $delIn = getIn($unique_data, 'channel_id');
                $deletein = $this->db->deletein('textbelt_channel', 'channel_id', $delIn);

                #data for tunnel
                $duplicate_data = array_duplicate(getInById($channel_data, 'channel_recipient', 'channel_id'));

                if($duplicate_data){
                    $duplicates = $this->db->t1wherein('textbelt_channel', 'channel_id', array_keys($duplicate_data), 2, 1);

                    $tunnel_data = [];
                    foreach($duplicates as $duplicate){
                        $tunnel_data[] = [
                            'tunnel_channel'   => $duplicate['channel_token'],
                            'tunnel_recipient' => $duplicate['channel_recipient'],
                            'tunnel_text'      => $duplicate['channel_text'],
                            'tunnel_created'   => $duplicate['channel_created'],
                            'channel_id'       => $duplicate['channel_id'],
                            'user_id'          => $duplicate['user_id'],
                        ];
                    }

                    $this->db->store('textbelt_tunnel', [
                        'tunnel_channel', 'tunnel_recipient', 'tunnel_text', 
                        'tunnel_created', 'channel_id', 'user_id'
                    ], $tunnel_data);

                    $delIn = getIn($tunnel_data, 'channel_id');
                    $deletein = $this->db->deletein('textbelt_channel', 'channel_id', $delIn);
                }
            }

            $textbelt_update = $this->db->update('textbelt_token', [
                'token_id' => $textbelt_token['token_id'],
                'token_call' => 0,
                'token_microtime' => microtime(true)
            ], ['id' => 'token_id']);

            $data[] = $sms_data;
        }

        $end = microtime(TRUE);

        if($counter_data > 0){
            $this->db->create('textbelt_caller', [
                'caller_data' => $counter_data,
                'caller_time' => substr($end - $start, 0, 4),
                'caller_type' => 'channel',
                'caller_microtime' => microtime(TRUE),
            ]);
        }

        // !$sleep ?: usleep(5000000);

        $setting_update = $this->db->update('setting', [
            'setting_key' => 'channel_call',
            'setting_value' => 0,
            'setting_microtime' => microtime(TRUE)
        ], ['id' => 'setting_key']);

        ddx(json_encode($data));
    }

    public function ChannelList()
    {
        return $this->db->t1where('textbelt_channel', 'user_id=? ORDER BY channel_id DESC LIMIT 100', [user_id()], 2);
    }

    #
    public function TunnelCall()
    {
        $setting = $this->db->t1where('setting', 'setting_key=?', ['tunnel_call'], 1);
        
        if($setting['setting_value'] == 1)
        {
            ddx('server work');
        }

        $setting_update = $this->db->update('setting', [
            'setting_key' => 'tunnel_call',
            'setting_value' => 1,
            'setting_microtime' => microtime(TRUE)
        ], ['id' => 'setting_key']);

        $data = [];
        $counter_data = 0;
        $script_time = 0;

        while($tunnel_data = $this->db->t1('textbelt_tunnel', 2, 1)){

            $start = microtime(TRUE);

            $unique_data = unique_multi_array($tunnel_data, 'tunnel_recipient');
            $counter_data += count($unique_data);

            $sms_data = [];
            foreach($unique_data as $tunnel){
                /*CURL TO TEXTBELT*/
                $sms_data[] = [
                    'sms_channel'   => $tunnel['tunnel_channel'],
                    'sms_recipient' => $tunnel['tunnel_recipient'],
                    'sms_text'      => $tunnel['tunnel_text'],
                    'sms_created'   => $tunnel['tunnel_created'],
                    'textId'        => rand(10000000, 100000000),
                    'user_id'       => $tunnel['user_id'],
                ];
            }

            $store = $this->db->store('textbelt_sms', [
                'sms_channel', 'sms_recipient', 'sms_text', 
                'sms_created', 'textId', 'user_id'
            ], $sms_data);

            $delIn = getIn($unique_data, 'tunnel_id');
            $deletein = $this->db->deletein('textbelt_tunnel', 'tunnel_id', $delIn);

            // !$tunnel_data ?: usleep(5000000);
            // !$tunnel_data ?: usleep(1000000);
            !$tunnel_data ?: usleep(500000);

            $data[] = $sms_data;

            $end = microtime(TRUE);
            $script_time += substr($end - $start, 0, 4) - 0.5;
        }
        
        if($counter_data > 0){
            $this->db->create('textbelt_caller', [
                'caller_data' => $counter_data,
                'caller_time' => $script_time,
                'caller_type' => 'tunnel',
                'caller_microtime' => microtime(TRUE),
            ]);
        }

        $setting_update = $this->db->update('setting', [
            'setting_key'       => 'tunnel_call',
            'setting_value'     => 0,
            'setting_microtime' => microtime(TRUE)
        ], ['id' => 'setting_key']);

        ddx(json_encode($data));
    }
    
    public function tunnelList()
    {
        return $this->db->t1where('textbelt_tunnel', 'user_id=? ORDER BY tunnel_id DESC LIMIT 100', [user_id()], 2);
    }
}

