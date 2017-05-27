<?php
include_once('include/hgdb.inc');

$id = isset($_GET['id']) ? addslashes($_GET['id']) : 0;

$article = get_article($id);

$title = ($article['name']!='' ? $article['name'] : $nameitem[0].$article['id']) ;

include_once('templates/'.$mobile.'header.tpl');

include_once('templates/'.$mobile.'gallery.tpl');

include_once('templates/'.$mobile.'footer.tpl');

?>
