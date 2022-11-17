<?php 

namespace middleware;

class Auth
{
	public static function handle($next)
	{
		has_user() ?: REDIRECT('auth');
		return $next;
	}
}

