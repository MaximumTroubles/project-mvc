<?php

return [
    '/'        => 'MainController@index',
    'contacts' => 'MainController@contacts',
    'article/(\d+)' => 'ArticleController@show',
    'article/(\d+)/edit' => 'ArticleController@edit',
    'pdf-articles' => 'ArticleController@pdf',
    'excel-articles' => 'ArticleController@excel',
];
