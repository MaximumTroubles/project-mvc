<?php


use Core\Libs\Route;
use Core\File\File;

spl_autoload_register(function ($class_name) {
    // echo $class_name;
    require_once  $class_name . '.php';
});

Route::start();



