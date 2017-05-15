<?php
include_once('../include/hgdb.inc');
error_reporting(0);
ini_set('display_errors','Off');

if ($_POST==array()) {$error[] = 'oopsresizeimg_url'; $error[] = 'oopsresizeprev_url'; SetCookies($item, $error);  Header('Location: article_edit.html'); exit;}

$id = isset($_POST['id']) ? addslashes($_POST['id']) : 0;
$item = array();
$error = array();

foreach ($show_art_fields as $value) {
	$item[$value] = (isset($_POST[$value]) ? shield_text($_POST[$value]) : '');
}
$item['id'] = $id;

foreach ($req_art_fields as $value) {
	if ($value!='img_url' && $value!='prev_url' && (!isset($item[$value]) || $item[$value]=='')) {
		$error[] = 'req'.$value;
	}
}

if (in_array('img_url', $req_art_fields) && $_FILES['img_url_file']["tmp_name"]=='' && $item['img_url']=='') {
	$error[] = 'reqimg_url';
}

if (in_array('prev_url', $req_art_fields) && $_FILES['prev_url_file']["tmp_name"]=='' &&  $item['prev_url']=='') {
	$error[] = 'reqprev_url';
}

if ($_FILES['img_url_file']["tmp_name"]!='') {

	$item['img_url'] = resize($_FILES['img_url_file']);

	if (!$item['img_url']) {
		$error[] = 'oopsresizeimg_url';
	}
}

if ($_FILES['prev_url_file']["tmp_name"]!='') {

	$item['prev_url'] = resize($_FILES['prev_url_file']);

	if (!$item['prev_url']) {
		$error[] = 'oopsresizeprev_url';
	}
}

if ($error!=array()) {
	SetCookies($item, $error);
	if ($id>0) {
		Header('Location: article/'.$id.'.html'); exit;
	} else {
		Header('Location: article_edit.html'); exit;
	}
}

if ($id==0) {
	insert_article($item['name'], $item['desc'], $item['img_url'], $item['prev_url'], $item['price'], $item['part'], $item['spec'], $item['number']);
} else {
	update_article($id, $item);
}

SetCookies(array(), array());

Header("Location: $adminka/");


?>
