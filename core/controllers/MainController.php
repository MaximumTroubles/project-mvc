<?php

namespace Core\Controllers;

use Core\Views\View;

class MainController extends Controller
{

    public function index()
    {
        $title = 'Home Page';
        $articles = [
            [
                'name' => 'Article 1',
                'content' => 'Text for Article 1'
            ],
            [
                'name' => 'Article 2',
                'content' => 'Text for Article 2'
            ],
        ];
        View::render('main/index', compact('title', 'articles'));
    }
    public function contacts()
    {
        View::render('main/contacts');
    }
}
