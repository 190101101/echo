<?php 

namespace library;
use \library\cookie;
use \library\session;
use \library\SxGeo;

class User
{
    public static function create()
    {
        #cookie key name
        $cookie_key = 'user';
        
        #user ip
        $user_ip = trim('188.253.228.128'); 

        #if has cookie key
        if(cookie::has($cookie_key))
        {
            $cookie = ssl_decode_each_keys(json_decode(cookie::read($cookie_key), true));

            if($cookie['user_update'] < time())
            {
                $cookie['user_update'] = time();

                db()->update('user', $cookie, ['id' => 'user_id']);

                cookie::create($cookie_key, json_encode(ssl_encode_each_keys($cookie)));
            }

            $user = [
                'user_ip'   => $cookie['user_ip'],

                'user_flag' => $cookie['user_flag'],
            ];

            session::create($cookie_key, $user);

            unset($user);
            
            unset($user_ip);
            
            unset($cookie_key);
        }
        #if has not cookie key
        else if(!cookie::has($cookie_key))
        {
            $user = db()->t1where('user', 'user_ip=?', [$user_ip], 1);

            if($user)
            {
                $user['user_ip'] = $user_ip;
                
                $user['user_query'] = $user['user_query'] += 1;
                
                $user['user_update'] = time();

                db()->update('user', $user, ['id' => 'user_id']);

                $user_data = json_encode(ssl_encode_each_keys([
                    'user_id'     => $user['user_id'],
                    
                    'user_ip'     => $user_ip,
                    
                    'user_flag'   => $user['user_flag'],
                    
                    'user_update' => time(),
                ]));

                cookie::create($cookie_key, $user_data);

                $data = [
                    'user_ip'   => $user['user_ip'],

                    'user_flag' => $user['user_flag'],
                ];

                session::create($cookie_key, $data);

                unset($data);

                unset($user);
                
                unset($user_ip);
                
                unset($cookie_key);
            }
            else
            {
                #get ip 
                $sxgeo = new SxGeo('../tmp/SxGeoCity.dat', SXGEO_BATCH | SXGEO_MEMORY);

                #get ip data
                $response = $sxgeo->getCityFull($user_ip);

                unset($sxgeo);

                #if all over good
                if($response == TRUE)
                {
                    $user = [
                        'user_ip'          => $user_ip,
                        
                        'user_country'     => $response['country']['name_en'],
                        
                        'user_city'        => $response['city']['name_en'],
                        
                        'user_region'      => $response['region']['name_en'],
                        
                        'user_flag'        => strtolower($response['country']['iso']),
                        
                        'user_lat'         => $response['city']['lat'],
                        
                        'user_lon'         => $response['city']['lon'],
                        
                        'user_update'      => time(),
                    ];

                    $create = db()->create('user', $user, 1);

                    $user_data = json_encode(ssl_encode_each_keys([
                        'user_id'     => $create['id'],

                        'user_ip'     => $user_ip,

                        'user_flag'   => $user['user_flag'],

                        'user_update' => time(),
                    ]));

                    #create cookie from new data
                    cookie::create($cookie_key, $user_data, (86400 * 365));

                    $data = [
                        'user_ip'   => $user_ip,

                        'user_flag' => $user['user_flag'],
                    ];

                    #create session from new data
                    session::create($cookie_key, $data);

                    unset($data);
                    
                    unset($user);
                    
                    unset($create);
                    
                    unset($user_ip);
                    
                    unset($response);

                    unset($user_data);
                    
                    unset($cookie_key);
                }
            }
        }
    }
}
