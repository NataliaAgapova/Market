<?php
include_once('../include/hgdb.inc');

$id = isset($_GET['id']) ? addslashes($_GET['id']) : 0;

if ($id>0) {
	update_article($id, array('status'=>1));
}


Header("Location: $adminka/gallery_deleted.html");


?>
