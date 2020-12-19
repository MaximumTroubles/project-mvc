<h2 class="text-center"><?= $title ?></h2>
<h2>Lorem ipsum dolor sit amet.</h2>

<?php foreach ($articles as $article) : ?>
    <h2>

        <a href="/article/<?= $article->id ?>">
            <?= $article->name ?>
        </a>

    </h2>
    <p><?= $article->text ?></p>

<?php endforeach ?>