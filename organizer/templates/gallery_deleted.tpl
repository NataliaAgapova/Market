<h1>Список <?= $nameitem[1]?></h1>

<a href='organizer.html'>Вернуться</a>
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
				<td>
					<? switch ($type) {
						case 'spec': ?>
						<?= ($item[$type]=='on' ? 'да' :'нет') ?>
						<? break;
						case 'part': ?>
						<?=  $GLOBALS['part_name'][$item[$type]]?>
						<? break;
						case 'img_url': ?>
						<? if ($item[$type]!='') {?>
							<img src='../upload/<?= $item[$type] ?>' class='mini' />
						<? } ?>
						<? break;
						default: ?>
						<?= stripcslashes($item[$type])  ?>
					<? } //switch ?>
				</td>
			<?} ?>
			<td><a href='article_restore.php?id=<?= $item['id'] ?>'>Восстановить</a><br>
				<a href='article_destroy.php?id=<?= $item['id'] ?>'>Удалить окончательно</a>
			</td>
		</tr>
		<? } ?>
	</tbody>
</table>

