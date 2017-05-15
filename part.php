<?php
include_once('include/hgdb.inc');

$part = isset($_GET['part']) ? addslashes($_GET['part']) : 0;

$title = $part_name[$part];

$articles = get_articles_by_part($part);

include_once('templates/header.tpl');

include_once('templates/part.tpl');

include_once('templates/footer.tpl');

?>
