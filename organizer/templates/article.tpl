<h1><?= $title ?></h1>

<form method='POST' action='<?= $adminka ?>/article_add.php' enctype="multipart/form-data">
	<?  foreach ($show_art_fields as $name => $type) { ?>
		<input name='id' type='hidden' value='<?= $item["id"] ?>'>
		<label><?= $name ?></label>
		<? if (in_array('req'.$type, $error)) {?>
			<br><span class='warning'>Поле "<?= $name ?>" надо заполнить.</span>
		<? } ?>
		<? switch ($type) {
			case 'desc':?>
			<textarea name='<?= $type ?>'><?= stripcslashes($item[$type]) ?></textarea><br><br>
			<? break;
			case 'spec': ?>
			<input name='<?= $type ?>' <?= ($item[$type]=='on' ? 'checked' :'') ?> type='checkbox'><br><br>
			<? break;
			case 'part': ?>
			<select name='<?= $type ?>'>
				<? foreach ($GLOBALS['part_name'] as $key => $title) { ?>
					<option value='<?= $key ?>' <?= ($key == $item[$type] ? 'selected' : '') ?>><?= $title ?></option>
				<? } ?>
			</select><br>
			<? break;
			case 'img_url': ?>
			<? if (in_array('oopsresize', $error)) {?>
			<br><span class='warning'>Проблемы с загрузкой картинки.</span>
		<? } ?>
			<? if ($item[$type]!='') {?>
				<img src='../../upload/<?= $item[$type] ?>' />
			<? } ?>
			<input type="hidden" name="img_url" value="<?= $item[$type] ?>" />
			<input type="hidden" name="MAX_FILE_SIZE" value="<?= $GLOBALS['pix_size'] ?>" />
			<input name='img_file' type='file'><br><br>
			<? break;
			default: ?>
			<input name='<?= $type ?>' value="<?= stripcslashes($item[$type]) ?>" type='text'><br><br>
		<? } //switch ?>
	<?} ?>
	<button type='submit' >Сохранить</button>
</form>
