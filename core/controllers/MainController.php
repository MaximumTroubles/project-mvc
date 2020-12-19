<?php

namespace Core\Controllers;

use Core\Views\View;
use Core\Libs\Db;
use Core\Models\Article;

class MainController extends Controller
{

    public function index()
    {
        $title = 'Home Page';

        $articles = Article::findAll();

        View::render('main/index', compact('title', 'articles'));
    }
    public function contacts()
    {
        View::render('main/contacts');
    }
}

//? ActiveRecord

//? $article;
//? $article->name = 'new';
//? $article->save();
