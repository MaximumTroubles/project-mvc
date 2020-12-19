<?php

return [
    '/'        => 'MainController@index',
    'contacts' => 'MainController@contacts',
    'article/(\d+)' => 'ArticleController@show',
];
