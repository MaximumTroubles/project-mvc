<?php

namespace Core\Views;

class View
{
    public static function render(string $path, array $data = [], int $code = 200)
    {
        http_response_code($code);
        extract($data);
        unset($data);
        require_once __DIR__ . '/templates/header.php';
        
        require_once __DIR__ . '/templates/' . $path . '.php';

        require_once __DIR__ . '/templates/footer.php';
    }
}
