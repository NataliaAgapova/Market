<?php

function insert_article($name, $desc, $img_url, $prev_url='', $price=0, $part=1, $spec=0, $number=1, $status=
	1) {
	$curtime = date('Y-m-d H:i:s', time());
	mysql_query("insert into article (id, name, `desc`, price, part, spec, img_url, prev_url, number, status, dataadd) values(NULL,'$name','$desc','$price','$part','$spec','$img_url', '$prev_url','$number', '$status', '$curtime')");
	$msg = mysql_query("select * from article where id=(select max(id) from article)");
	$msgfetch = mysql_fetch_array($msg);
	return $msgfetch['id'];
}

function get_articles($status=1, $order='dataadd') {
	$msg=mysql_query("select * from article where status='$status' order by $order=0, $order ");
	$tmp = array();
	for ($i = 0; $i<mysql_num_rows($msg); $i++) {
		$tmp[]= mysql_fetch_array($msg);
	}
	return $tmp;
}

function get_articles_by_part($part, $order='dataadd') {
	$msg=mysql_query("select * from article where status='1' and part='$part' order by $order");
	$tmp = array();
	for ($i = 0; $i<mysql_num_rows($msg); $i++) {
		$tmp[]= mysql_fetch_array($msg);
	}
	return $tmp;
}

function get_article($id, $status=1) {
	$msg = mysql_query("select * from article where status='$status' and id='$id'");
	$msgfetch = mysql_fetch_array($msg);
	return $msgfetch;
}

function update_article($id, $array) {
	if (sizeof($array)>0){
		unset($array['id']);
		foreach ($array as $key => $value) {
			$param[] = "`$key` = '".addslashes($value)."'";
		}
		return mysql_query("UPDATE article SET ".implode(', ', $param)." WHERE id = $id");
	}
	return false;
}

function delete_article($id) {
	return mysql_query("DELETE FROM article WHERE id = $id");
}

?>