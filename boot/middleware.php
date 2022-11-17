<?php 

return [
    
    'ifLogin' => \middleware\ifLogin::class,
    
    'isAdmin' => \middleware\isAdmin::class,
    
    'Auth' => \middleware\Auth::class,

    'User' => \middleware\User::class,

    'AuthCheck' => \middleware\AuthCheck::class,
    
    'Authless' => \middleware\Authless::class,
    
    'Panel' => \middleware\Panel::class,

    'Deep' => \middleware\Deep::class,

    'Quest' => \middleware\Quest::class,
    
    'Simple' => \middleware\Simple::class,
    
    'Example' => \middleware\Example::class,
];

