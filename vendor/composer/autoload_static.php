<?php



namespace Composer\Autoload;

class ComposerStaticInit58c4f24ad8d9b882f33f784c0f510064
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit58c4f24ad8d9b882f33f784c0f510064::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit58c4f24ad8d9b882f33f784c0f510064::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
