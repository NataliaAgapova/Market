<?php
include_once('../include/hgdb.inc');

$id = isset($_GET['id']) ? addslashes($_GET['id']) : 0;

if ($id>0) {
	$item = get_article($id, 0);
	if ($item['img_url'] && file_exists($GLOBALS['uploaddir'] . $item['img_url'])) { unlink($GLOBALS['uploaddir'] . $item['img_url']); }
	if ($item['prev_url'] && file_exists($GLOBALS['uploaddir'] . $item['prev_url'])) { unlink($GLOBALS['uploaddir'] . $item['prev_url']); }
	delete_article($id);
}


Header("Location: $adminka/gallery_deleted.html");


?>
