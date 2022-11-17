<?php 

namespace middleware;
use \library\Auth;

class Authless
{
	public static function handle($next)
	{
		Auth::cheek();
		
		!has_user() ?: REDIRECT();

		return $next;
	}
}

