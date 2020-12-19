<?php

namespace Core\Models;

class Article extends Model
{
    protected static function getTableName()
    {
        return 'articles';
    }
    public function getAuthor()
    {
        return User::getById($this->id);
    }
}
