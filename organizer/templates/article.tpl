<h1><?= $title ?></h1>

<script>tinymce.init({
				selector:"#desc",
				plugins: [
      "image lists charmap preview hr anchor",
      "paste textcolor code"
    ],
    toolbar: "bold italic | fontselect | fontsizeselect |alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | forecolor backcolor | preview | code",
      statusbar: false ,
       browser_spellcheck: true,
       image_description: false,
      language: "ru_RU",
                 menubar: false,  // removes the menubar
            });</script>

<form method='POST' action='<?= $adminka ?>/article_add.php' enctype="multipart/form-data">
	<input name='id' type='hidden' value='<?= $item["id"] ?>'>
	<?  foreach ($show_art_fields as $name => $type) { ?>
	<div class='row'>
		<div class='col-25'>
			<label><?= $name ?></label>
		<? if (in_array('req'.$type, $error)) {?>
			<br><span class='warning'>Поле "<?= $name ?>" надо заполнить.</span>
		<? } ?>
		</div>
		<div class='col-50'>
		<? switch ($type) {
			case 'desc':?>
			<textarea name='<?= $type ?>' rows=10 cols=50 id='desc'><?= stripcslashes($item[$type]) ?></textarea><br><br>
			<? break;
			case 'spec': ?>
			<input name='<?= $type ?>' <?= ($item[$type]=='on' ? 'checked' :'') ?> type='checkbox'><br><br>
			<? break;
			case 'part': ?>
			<select name='<?= $type ?>'>
				<? if (!in_array('part',$req_art_fields)) {?>
					<option value='0' <?= ($key == $item[$type] ? 'selected' : '') ?>>без раздела</option>
				<? } ?>
				<? foreach ($GLOBALS['part_name'] as $key => $title) { ?>
					<option value='<?= $key ?>' <?= ($key == $item[$type] ? 'selected' : '') ?>><?= $title ?></option>
				<? } ?>
			</select><br>
			<? break;
			case 'img_url':
			case 'prev_url':?>
			<? if (in_array('oopsresize'.$type, $error)) {?>
			<br><span class='warning'>Проблемы с загрузкой картинки.</span>
		<? } ?>
			<? if ($item[$type]!='') {?>
				<img src='../../upload/<?= $item[$type] ?>' />
			<? } ?>
			<input type="hidden" name="<?= $type ?>" value="<?= $item[$type] ?>" />
			<input type="hidden" name="MAX_FILE_SIZE" value="<?= $GLOBALS['pix_size'] ?>" />
			<input name='<?= $type ?>_file' type='file'><br><br>
			<? break;
			default: ?>
			<input name='<?= $type ?>' value="<?= stripcslashes($item[$type]) ?>" type='text'><br><br>
		<? } //switch ?>
		</div>
	</div>
	<?} ?>
	<div class='row'>
		<button type='submit' >Сохранить</button>
		<button type='reset' >Отменить</button>
	</div>
</form>
