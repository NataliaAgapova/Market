<?

function SetCookies($item, $error) {
	SetCookie("error",implode('--', $error));
	foreach ($GLOBALS['show_art_fields'] as $key => $value) {
		SetCookie("item[$value]", $item[$value]);
	}
}

function resize($file) {

	$imageinfo = getimagesize($file['tmp_name']);
	switch ($imageinfo['mime']) {
		case 'image/jpeg': $source = @imagecreatefromjpeg ($file['tmp_name']);
			break;
		case 'image/png': $source = @imagecreatefrompng ($file['tmp_name']);
			break;
		case 'image/gif': $source = @imagecreatefromgif ($file['tmp_name']);
			break;
		default: $source = @imagecreatefromjpeg ($file['tmp_name']);
	}

	if (!$source) { return false;}

	$src_w = imagesx($source);
	$src_h = imagesy($source);

	if ($src_w > $GLOBALS['pix_width'] || $src_h > $GLOBALS['pix_height'] ) {
		$ratio = ($src_w/$GLOBALS['pix_width'] > $src_h/$GLOBALS['pix_height'] ? $src_w/$GLOBALS['pix_width'] : $src_h/$GLOBALS['pix_height']);

		$dest_w = round($src_w/$ratio);
		$dest_h = round($src_h/$ratio);
		$dest = imagecreatetruecolor($dest_w, $dest_h);
		imagecopyresampled($dest, $source, 0, 0, 0, 0, $dest_w, $dest_h, $src_w, $src_h);

		imagedestroy($source);
		$source = imagecreatetruecolor($dest_w, $dest_h);
		imagecopy($source, $dest, 0, 0, 0, 0, $dest_w, $dest_h);
		imagedestroy($dest);
	}

	switch ($file['type']) {
		case 'image/jpeg': $flag = imagejpeg($source, $GLOBALS['uploaddir'] . $file['name'], 75);
			break;
		case 'image/png': $flag = imagepng($source, $GLOBALS['uploaddir'] . $file['name']);
			break;
		case 'image/gif':  $flag = imagegif($source, $GLOBALS['uploaddir'] . $file['name']);
			break;
		default: $flag = imagejpeg($source, $GLOBALS['uploaddir'] . $file['name'], 75);
	}
	imagedestroy($source);
	return ($flag ? $file['name'] : false);

}

function shield_text($text) {
	$trans = array('"' => "&quot;");
	return addslashes(strtr($text, $trans));
}

function unshield_text($text) {
	$trans = array('&quot;' => '"');
	return addslashes(strtr($text, $trans));
}


?>