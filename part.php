<?php
include_once('include/hgdb.inc');

$part = isset($_GET['part']) ? addslashes($_GET['part']) : 0;

$title = $part_name[$part];

$articles = get_articles_by_part($part);

include_once('templates/header.tpl');

include_once('templates/slider.tpl');

include_once('templates/part.tpl');
/*
switch ($part) {
	case (1): include_once('templates/part.tpl');
		break;
	case (2): include_once('templates/part2.tpl');
		break;
	case (3): include_once('templates/part3.tpl');
		break;
}*/

include_once('templates/part.tpl');

include_once('templates/footer.tpl');

?>
