<?php

namespace Core\Controllers;

use Core\Models\Article;
use Core\Models\User;
use Core\Views\View;


class ArticleController extends Controller
{

    public function show($id)
    {
        $article = Article::getById($id);
        if (!$article) {
            View::render('errors/404', [], 404);
            return;
        }
        $author = User::getById($article->user_id);

        View::render('articles/show', compact('article', 'author'));
    }
}


//? ORM - Object Relation Mapping (обектно релетивное )
//? Singletone 