<?php

namespace Core\Libs;

use Core\Controllers\MainControllers;
use Core\Libs\Exceptions\NotFoundException;
use Core\Views\View;

class Route
{
    private static $page;
    public  static function start()
    {
        self::$page = $_GET['page'] ?? '/';
        $routes = require __DIR__ . '/../web.php';

        $isRouteFound = false; //? $routes  нет совпадений по url 
        foreach ($routes as $pattern => $controllerAndMethod) {
            preg_match('~^' . $pattern . '$~', self::$page, $matches);
            if (!empty($matches)) {
                $isRouteFound = true;
                break;
            }
        }


        if ($isRouteFound) {
            list($nameController, $nameMethod) = explode('@', $controllerAndMethod);

            if (file_exists('core/controllers/' . $nameController . '.php')) {

                // require 'core/controllers/' . $nameController . '.php';
                $pathController = 'Core\\Controllers\\' . $nameController;
                $controller = new $pathController();

                if (method_exists($controller, $nameMethod)) {

                    //? [0] => article/1 [1] =>1
                    //? article(\d+)/comment(\d+)  ----- это [0] => article/1/comment/12 [1] => 1 [2] => 12


                    //? Массив $matches хранит сейчас  [0] => article/1  [1] =>1 , а нам надо только первый индекс массива в unset удаляем 0 эдемент массива
                    unset($matches[0]); //? удаляем [0] => article/1/comment/12 и оставляем только [1] => 1 [2] => 12

                    $controller->$nameMethod(...$matches);
                } else {
                    echo 'Method not found';
                }
            } else {
                echo 'File not found';
            }
        } else {
            throw new NotFoundException();
            
        }
    }

    public  static function getPage()
    {
        return self::$page;
    }
}
