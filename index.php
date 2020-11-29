<?php

use Core\Libs\Route;

spl_autoload_register(function ($class_name) {
    // echo $class_name;
    require_once  $class_name . '.php';
});

Route::start();



// require 'core/dz/File.php';
// require 'core/dz/interface.php';
// $c = new File('file.txt');
// var_dump($c);
