<?php
include_once('../include/hgdb.inc');

$id = isset($_GET['id']) ? addslashes($_GET['id']) : 0;

$title = ($id==0 ? 'Добавление ': 'Редактирование ').$GLOBALS['nameitem'][2] ;

if (isset($_COOKIE['error'])) {
	$error=explode('--', $_COOKIE['error']);
	$item = $_COOKIE['item'];
	$item['id'] = $id;
} else {
	$item = get_article($id);
	$error = array();
}

include_once('templates/header.tpl');

include_once('templates/article.tpl');

include_once('templates/footer.tpl');

?>
