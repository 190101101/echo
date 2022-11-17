<?php 

namespace middleware;

class AuthCheck
{
	public static function handle($next)
	{
		!has_user() ?: REDIRECT();
		
		return $next;
	}
}

