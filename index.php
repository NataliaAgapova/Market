<?php
include_once('include/hgdb.inc');

$title = 'Главная страница';

$articles = get_articles(1, 'number');

include_once('templates/'.$mobile.'header.tpl');

include_once('templates/'.$mobile.'slider.tpl');

include_once('templates/'.$mobile.'index.tpl');

include_once('templates/'.$mobile.'footer.tpl');

?>
