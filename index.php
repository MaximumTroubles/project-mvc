<?php
require_once __DIR__ . '/vendor/autoload.php';

use Core\Libs\Route;
use Core\File\File;
use Core\Libs\Exceptions\DbException;
use Core\Libs\Exceptions\NotFoundException;
use Core\Views\View;

spl_autoload_register(function ($class_name) {
    // echo $class_name;
    require_once  $class_name . '.php';
});

try {
    Route::start();
} catch (DbException $e) {
    echo $e->getMessage();
} catch (NotFoundException $e) {
    View::render('errors/404', [], 404);
}
