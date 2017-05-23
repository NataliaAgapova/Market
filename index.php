<?php
include_once('include/hgdb.inc');

$title = 'Главная страница';

$articles = get_articles(1, 'number');

include_once('templates/header.tpl');

include_once('templates/slider.tpl');

include_once('templates/index.tpl');

include_once('templates/footer.tpl');

?>
