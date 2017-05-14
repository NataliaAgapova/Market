<?php
include_once('../include/hgdb.inc');

$title = 'Главная страница';

$arts = get_articles(0);

include_once('templates/header.tpl');

include_once('templates/gallery_deleted.tpl');

include_once('templates/footer.tpl');

?>
