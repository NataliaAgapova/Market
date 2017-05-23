<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	<title>Администраторский интерфейс <?= $title ?></title>

	<link rel="stylesheet" type="text/css" href="/include/site.css" media="screen, projection"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="/js/admin.js"></script>
	<script type="text/javascript" src="/js/jquery.tablesorter.min.js"></script>
	<script type="text/javascript" src="/js/tinymce/tinymce.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function()
		    {
		        $(".tablesorter").tablesorter();
		    }
		);
	</script>

	</head>
	<body <?= (isset($onload)? 'onload="'.$onload.'"': '') ?> class='adminka'>
		<div class='header'>
			<a href='/organizer/'><img src='/organizer/images/logo.jpg' alt='главная' title='главная'></a>
			<h2><a href='/organizer/'>Список <?= $GLOBALS['nameitem'][1] ?></a></h2>
		</div>
		<div class='wrapper'>