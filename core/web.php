<?php

return [
    '/'        => 'MainController@index',
    'contacts' => 'MainController@contacts',
    'article/(\d+)' => 'ArticleController@show',
    'article/(\d+)/edit' => 'ArticleController@edit',
];
