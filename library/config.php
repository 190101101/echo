<?php 

namespace library;
use \library\middleware;

class config
{
    
    public $config;
    
    public $route = [];
    
    public $middleware;

    public function __construct($config)
    {
        $this->start($config);
        
        $this->middleware();
    }

    public function start($config)
    {
        if(has_user())
        {
            if(user_level() == 1){
                $this->route = $config['info'];    
            }
            if(user_level() == 2){
                $this->route = $config['payment'];    
            }
            if(user_level() == 3){
                $this->route = $config['service'];    
            }
            if(user_level() > 3){
                $this->route = $config['text'];
            }
        }else{
            $this->route = $config['auth'];    
        }
        return $this->route;
    }

    public function middleware()
    {
        $this->middleware = require_once '../boot/middleware.php';
    }
}