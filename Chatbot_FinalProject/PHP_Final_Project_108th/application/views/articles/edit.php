<!DOCTYPE html>
<html lang="zh-TW">
<head>
	<meta charset="UTF-8">
	<meta name="robots" content="all">
	<meta name="viewport" content="width = device-width">
	<link rel = "stylesheet" type = "text/css" href = "<?php echo base_url('public/assets/all.css'); ?>" media="all">
	<link rel = "stylesheet" type = "text/css" href = "<?php echo base_url('public/assets/upload.css'); ?>" media="all">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!--[if lt IE 9]-->
　	<!--[endif]-->
	<title>Chatbot文章上傳</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
	<title>Chatbot文章上傳</title>
	<script type="text/javascript">
	$(document).ready(function() {
		$("select.tags").select2();
	});
		
	</script>
	<style type="text/css">
		select.tags {
			width: 100%;
		}
	</style>
</head>

<body class="corporate">

<!--header-->
<div class="header" id="header">
<div class="header-main">
	<!--logo-->
	<a class="site-logo" href="<?php echo site_url(); ?>">
		<img src="<?php echo base_url('public/images/logo.png'); ?>" alt="Chatbot文章上架-logo">
		<h1>Chatbot文章上傳</h1>
	</a>

</div>
</div>

<!--editor-->
<div class="editor-wrap">
	<?php echo validation_errors(); ?>
	<?php echo form_open('articles/'.$article['id'].'/update') ?>
			<div class="data">
				<label for="upload-title">主標題</label><br/>
				<input type="text" name="title" id="upload-title" value="<?php echo $article['title']; ?>">
			</div>
			<div class="data">
				<label for="upload-url">超連結</label><br/>
				<input type="url" name="url" id="upload-url" value="<?php echo $article['url']; ?>">
			</div>
			<div class="data">
				<label for="upload-tag">標籤分類</label><br/>
				<span style="margin-top: 20px;"><?php echo form_dropdown("tag[]", $tags, $article_tag, "multiple='multiple' class='tags'"); ?></span>
			</div>
			<div class="data">
				<label for="upload-intro">文章內容</label><br/>
				<textarea name="content" rows="8" cols="80" id="upload-intro"><?php echo $article['content']; ?></textarea>
			</div>
			<div class="data">
				<label for="upload-photo">圖片網址(圖片用在首頁文章列表中的文章縮圖)</label><br/>
				<input type="text" name="pic_url" id="upload-photo" value="<?php echo $article['pic_url']; ?>">
			</div>
			<div class="confirm">
				<ul>
					<li><input type="button" value="取消" onclick="location.href='<?php echo site_url('articles'); ?>'"></li>
					<li><input type="submit" name="submit" value="確認"></li>
				</ul>
			</div>
	</form>
</div>
