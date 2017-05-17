
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/include/main.css">
    <script type="javascript">


        $(document).ready(function() {
            $(document).click(function(){
                $('#suggestions').fadeOut(100);
            });
        });


    </script>

    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>

    <title><?= $title ?></title>
</head>
<body>


<div class="header">

    <div class="portrait"><a href="index.html"><img src="/images/logomaha.png"></a></div>
    <div class="mariart"><a href=""><img src="/images/mariart.png"></a> </div>
    <div class="artpro"><a href=""><img src="/images/artpro.png"></a></div>

</div>

<div class="text">

    <div><h1>MARIA SAAKYAN</h1></div>
     <div><h1>THE INTERNAL REALISM</h1></div>
    <div><h1>МАРИЯ СААКЯН</h1></div>
    <div><h1>ВНУТРЕННИЙ РЕАЛИЗМ</h1></div>
</div>


<div class="side_menu">
	<ul>
		<? foreach ($part_name as $key => $value) { ?>
			<li><a href='/gallery/<?= $value ?>.html'><?= $value ?></a></li>
		<? } ?>
        <li><a href="">ABOUT</a></li>
        <li><a href="">PRINTSHOP</a></li>
    </ul>

</div>