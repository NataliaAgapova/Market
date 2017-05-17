<div class="wrapper_two">


    <div class="quote">
    	<blockquote>
    	<?switch ($part) {
    		case (1): ?>
        	«Я стараюсь сочетать цвета, как слова из которых складывается поэзия, как ноты из которых получается музыка.» Хоан Миро
        	<? break;
        	case (2): ?>
        	"Всякое произведение искусства есть дитя своего времени часто оно и мать наших чувств" Василий Кандинский
        	<? break;
        	case (3): ?>
        	"Всякое произведение искусства есть дитя своего времени часто оно и мать наших чувств" Василий Кандинский
        <? } ?></blockquote>
    </div>

    <div class="square">


        <div class="row_1">



            <div class="item"><img id="document" src="/images/items_<?= $part ?>/row_1_pic_1.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_1_pic_2.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_1_pic_3.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_1_pic_4.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_1_pic_5.png"></div>


        </div>



        <div class="row_1"> <!-- первая линия -->

            <div class="item"><img src="/images/items_<?= $part ?>/row_2_pic_1.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_2_pic_2.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_2_pic_3.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_2_pic_4.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_2_pic_5.png"></div>


        </div>


        <div class="row_1">

            <div class="item"><img src="/images/items_<?= $part ?>/row_3_pic_1.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_3_pic_2.png"></div>
            <div class="item"><a href="printshop.html"><img src="/images/items_<?= $part ?>/row_3_pic_3.png"></a></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_3_pic_4.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_3_pic_5.png"></div>

        </div>


        <div class="row_1"> <!-- первая линия -->

            <div class="item"><img src="/images/items_<?= $part ?>/row_4_pic_1.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_4_pic_2.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_4_pic_3.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_4_pic_4.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_4_pic_5.png"></div>

        </div>


        <div class="row_1"> <!-- первая линия -->


            <div class="item"><img src="/images/items_<?= $part ?>/row_5_pic_1.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_5_pic_2.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_5_pic_3.png"></div>
            <div class="item"><img src="/images/items_<?= $part ?>/row_5_pic_4.png"></div>
            <div class="item"><a href="about.html"><img src="/images/items_<?= $part ?>/row_5_pic_5.png"></a></div>


        </div>




    </div>

<?/*foreach ($articles as $key => $item) { ?>
	<a href='/gallery/<?= $part_name[$part] ?>/<?= $item['id'] ?>.html' ><img src='/upload/<?= $item['prev_url'] ?>' alt='<?= $item['name'] ?>' title='<?= $item['name'] ?>'></a>
	<? if (($key+1)%5 == 0) {?><br><? } ?>
<? } */?>