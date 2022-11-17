<?php 

namespace middleware;

class Panel
{
	public static function handle($next)
	{
		has_user() ?
			user_level() >= 99 ?: REDIRECT('404')
		: REDIRECT('auth');
		return $next;
	}
}

