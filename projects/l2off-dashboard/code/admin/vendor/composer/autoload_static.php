<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInite6795ff35fa5b3ff598fdb952cb0da9a
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'Psr\\Log\\' => 8,
        ),
        'F' => 
        array (
            'Firebase\\JWT\\' => 13,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Psr\\Log\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/log/Psr/Log',
        ),
        'Firebase\\JWT\\' => 
        array (
            0 => __DIR__ . '/..' . '/firebase/php-jwt/src',
        ),
    );

    public static $prefixesPsr0 = array (
        'P' => 
        array (
            'PayPal' => 
            array (
                0 => __DIR__ . '/..' . '/paypal/rest-api-sdk-php/lib',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInite6795ff35fa5b3ff598fdb952cb0da9a::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInite6795ff35fa5b3ff598fdb952cb0da9a::$prefixDirsPsr4;
            $loader->prefixesPsr0 = ComposerStaticInite6795ff35fa5b3ff598fdb952cb0da9a::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}
