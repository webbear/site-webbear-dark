<?php

$homepage = $pages->get("/");
$settings = $pages->get('/settings/');
$title = $page->get('headline|title');
$browserTitle = 'Login' . ' - ' . $settings->headline;
$content = '<div class="login-form protected-page">'. $loginForm.'</div>';
$wb = new Utilities;
?>
<!DOCTYPE html>
<html class="no-js">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="initial-scale=1.0, width=device-width" />
	<title><?= $browserTitle; ?></title>

	<link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="<?=$config->urls->templates.'css/main.css' ?>" media="all" />
    <link rel="stylesheet" type="text/css" href="<?=$config->urls->templates.'js/lightcase/src/css/lightcase.css' ?>" media="all" />
	<script src="<?=$config->urls->templates.'js/vendors/modernizr.custom.js' ?>"></script>
    <script src="<?=$wb->makeAssetLink($config->urls->templates.'js/libs/jquery.min.js') ?>"></script>
    <script src="<?=$wb->makeAssetLink($config->urls->templates.'js/libs/jquery-migrate-3.0.0.js') ?>"></script>
    <script src="<?=$wb->makeAssetLink($config->urls->templates.'js/lightcase/vendor/jQuery/jquery.events.touch.js') ?>"></script>
    <script src="<?=$wb->makeAssetLink($config->urls->templates.'js/lightcase/src/js/lightcase.js') ?>"></script>

	<link rel="icon" type="image/x-icon" href="<?=$wb->makeAssetLink($config->urls->templates.'images/favicon.ico')?>" />
</head>
<body id="top">


<div class="container">


	<header class="header">
		<div class="top-bar">
			<nav class="top-nav">
				<ul class='topnav'>
					<?=$wb->renderNavigation($homepage->children->prepend($homepage), $options = array('tree' => 0))?>
				</ul>
			</nav>
		</div>

		<div class="site-title">
			<h1><a href="<?=$homepage->url?>"><?=$settings->headline?></a></h1>
		</div>
	</header>

	<div class="breadcrumb nav">
		<?=$wb->renderBreadcrumb($page)?>
	</div>

	<div class='body'>
		<h1 class="page-title"><?=$title; ?></h1>
		<div class='main-content'>

			<?=$content; ?>

		</div>
	</div>

	<footer class='footer'>
		<ul class="utilities nav">
			<?=$wb->renderUtilityNav();?>
		</ul>
		<ul class="additionals">
			<li class="copyright">&copy;<?=date('Y')?> <?=$settings->headline?></li>
			<li class="webbear">designed by <a href="http://www.webbear.ch">webbear.ch</a></li>
		</ul>
		<?=$wb->renderLogoutLink($user)?>
	</footer>
</div>

<?=$wb->isEditable()?>

<script src="<?=$wb->makeAssetLink($config->urls->templates.'js/main.min.js')?>"></script>

</body>
</html>