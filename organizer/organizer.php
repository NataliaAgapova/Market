<?php
include_once('../include/hgdb.inc');

$title = 'Главная страница';

$arts = get_articles();

include_once('templates/header.tpl');

include_once('templates/gallery.tpl');

include_once('templates/footer.tpl');

?>
