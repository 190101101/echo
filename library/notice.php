<?php 

namespace library;

class notice
{
    public static function text($theme, $text)
    {
        $_SESSION['notice'] = (object) [
            'notice_theme' => $theme,
            'notice_text' => $text,
        ];
    }
}

/*
use \library\notice;
notice::text('theme', 'text');
*/
        