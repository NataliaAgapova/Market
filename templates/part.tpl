<h1><?= $title ?></h1>

<? foreach ($articles as $key => $item) { ?>
	<a href='/gallery/<?= $part_name[$part] ?>/<?= $item['id'] ?>.html' ><img src='/upload/<?= $item['prev_url'] ?>' alt='<?= $item['name'] ?>' title='<?= $item['name'] ?>'></a>
	<? if (($key+1)%5 == 0) {?><br><? } ?>
<? } ?>