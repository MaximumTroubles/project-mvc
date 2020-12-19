<h1>
    <?= $article->name ?>
</h1>
<p>Автор:<?= $article->getAuthor()->name ?></p>
<div>
    <?= $article->text ?>
</div>