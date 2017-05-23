
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/include/main.css">
    <link rel="stylesheet" type="text/css" href="/js/slick/slick-theme.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <script type="text/javascript" src="/js/site.js"></script>

    <title><?= $title ?></title>
</head>
<body>


<div class="header">

        <a href="/index.html"><img src="/images/Hedder.png"></a>

</div>



<div class="side_menu">
	<ul>
		<? foreach ($part_name as $key => $value) { ?>
			<li><a href='/gallery/<?= $value ?>.html'><?= $value ?></a></li>
		<? } ?>
        <li><a href="/about.html">ABOUT</a></li>
        <li><a href="/printshop.html">PRINTSHOP</a></li>
    </ul>

</div>