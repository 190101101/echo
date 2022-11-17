<?php 

namespace core;

class view
{
    public static function view($area, $modulus, $method, $data = [])
    {
        if(file_exists($file = "../modulus/{$area}/{$modulus}/view/{$method}.php")){
            require_once $file;
        }
        else{
            REDIRECT('error/type/view');
        }
    }

	private static function render($area, $modulus, $method, $data = [])
	{
		if(file_exists($file = "../modulus/{$area}/{$modulus}/view/{$method}.php")){
            ob_start();
            require_once $file;
            $content = ob_get_contents();
            ob_end_clean();
            return $content;
		}
        else{
            REDIRECT('error/type/render');
		}
	}

	public static function layout($layout, $area, $modulus, $method, $data = [])
	{
        $data['VIEW'] = $method == NULL ?: 
            view::render($area, $modulus, $method, (object) $data);
        require_once "../layout/{$layout}.php";
	}

    #

    private static function cacheView($area, $modulus, $method, $data = [])
    {
        // dd(\library\session::read('user')['user_token']);

        $md5 = md5($method).'.html';
        $cache = "../tmp/cache/{$md5}";
        $file = "../modulus/{$area}/{$modulus}/view/{$method}.php";

        if(file_exists($file)){
            $start = microtime(TRUE);

            if((time() - 5 > @filemtime($cache))){
                
                ob_start();
                require_once $file;
                $content = ob_get_contents();
                ob_end_clean();

                // file_put_contents($cache, serialize($content));
                ob_start();
                $fp = fopen($cache, 'w');
                fwrite($fp, $content);
                fclose($fp);
                ob_end_flush();

                ob_start();
                require_once $cache;
                $cachecontent = ob_get_contents();
                ob_end_clean();    
/*
                dd(memory());
                dd(byte(memory()));
                dd('file');
                
                $end = microtime(TRUE);
                echo $end - $start;
*/

            }
            else
            {
                $start = microtime(TRUE);

                ob_start();
                require_once $cache;
                $cachecontent = ob_get_contents();
                ob_end_clean();
/*
                dd(memory());
                dd(byte(memory()));
                dd('cache');


                $end = microtime(TRUE);
                echo $end - $start;
*/
            }

            return $cachecontent;
        }
        else{
            REDIRECT('error/type/render');
        }
    }

    public static function cache($layout, $area, $modulus, $method, $data = [])
    {
        $data['VIEW'] = $method == NULL ?: 
            view::cacheView($area, $modulus, $method, (object) $data);
        require_once "../layout/{$layout}.php";
    }
}