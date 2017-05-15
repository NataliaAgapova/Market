<h1>Список <?= $nameitem[1]?></h1>

<a href='article_edit.html' class='button'>Добавить новый</a><a href='gallery_deleted.html'  style='float: right;'  class='button'>Корзина</a>
<table class='tablesorter'>
	<thead>
		<tr>
			<? foreach ($show_art_fields as $namefield => $value) {?>
				<th><?= $namefield  ?></th>
			<?} ?>
				<th></th>
		</tr>
	</thead>
	<tbody>
		<? foreach ($arts as $item) { ?>
		<tr>
			<? foreach ($show_art_fields as $type) {?>
				<td class='<?= $type ?>'>
					<? switch ($type) {
						case 'spec': ?>
						<?= ($item[$type]=='on' ? 'да' :'нет') ?>
						<? break;
						case 'part': ?>
						<?=  $GLOBALS['part_name'][$item[$type]]?>
						<? break;
						case 'img_url':
						case 'prev_url': ?>
						<? if ($item[$type]!='') {?>
							<img src='../upload/<?= $item[$type] ?>' class='mini' />
						<? } ?>
						<? break;
						case 'desc': ?>
						<?= stripcslashes(unshield_text($item[$type]))  ?>
						<? break;
						default: ?>
						<?= stripcslashes($item[$type])  ?>
					<? } //switch ?>
				</td>
			<?} ?>
			<td><a href='article/<?= $item['id'] ?>.html'>Редактировать</a><br>
				<a href='article_delete.php?id=<?= $item['id'] ?>'>Удалить</a>
			</td>
		</tr>
		<? } ?>
	</tbody>
</table>

