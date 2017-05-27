<div id="open_modal" class="modal_dialog"> <!-- окно вызова слайдера -->
	<link rel="stylesheet" type="text/css" href="/js/slick/slick.css"/>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="/js/slick/slick.min.js"></script>

    <div class="close">Закрыть</div>

    <div class="container">
        <div id="slider" class="slider">
        	<? $i = 1;
        	foreach ($articles as $item) {?>
        	<div id="headline-<?= $i++ ?>">
                <img src="/upload/<?= $item['img_url'] ?>" alt="<?= $item['name'] ?>" title="<?= $item['name'] ?>" />
	        </div>
            <? } ?>
        </div>
    </div>


</div>
<br>