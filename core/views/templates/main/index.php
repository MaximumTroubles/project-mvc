<h2 class="text-center"><?= $title ?></h2>
<h2>Lorem ipsum dolor sit amet.</h2>

<?php foreach ($articles as $article) : ?>
    <h2><?= $article['name'] ?></h2>
    <p><?= $article['content'] ?></p>

<?php endforeach ?>