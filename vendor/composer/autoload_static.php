<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInite5b365085b83b53fce21fbacbba819cb
{
    public static $prefixLengthsPsr4 = array (
        'F' => 
        array (
            'Firebase\\JWT\\' => 13,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Firebase\\JWT\\' => 
        array (
            0 => __DIR__ . '/..' . '/firebase/php-jwt/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInite5b365085b83b53fce21fbacbba819cb::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInite5b365085b83b53fce21fbacbba819cb::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
