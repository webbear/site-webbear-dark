<?php namespace ProcessWire; ?>
<!doctype html>
<html class="<?=$wb->cssClasses() ?>">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="initial-scale=1.0, width=device-width" />
	<title><?=setting("browser_title"); ?></title>
	<?php if(page("summary")):?>
		<meta name="description" content="<?=sanitizer()->text(page('summary'));?>" />
	<?php endif; ?>
	<link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="<?=$wb->makeAssetLink(urls('templates').'css/main.css') ?>" media="all" />
	<?=setting("head_script")?>
	<link rel="icon" type="image/x-icon" href="<?=$wb->makeAssetLink(urls('templates') .'images/favicon.ico')?>" />
</head>
<body id="top" class="<?php if($sidebar) {echo "has-sidebar";} else {echo "full-width";}?>">
<div class="skip-links">
	<ul>
		<li class="skip-link skip-link-1"><a href='#navgiation'><?=__("Zur Navigation")?></a></li>
		<li class="skip-link skip-link-2"><a href="#content"><?=__("Zum Inhalt")?></a></li>
	</ul>
</div>
<div class="container">
	<header class="header<?php if(count(setting("header_image"))) echo ' has-image'; ?>">
		<div class="top-bar">
			<nav class="top-nav">
				<ul class='topnav' id="navigation">
					<?=$wb->renderNavigation(setting("homepage")->children->prepend(setting("homepage")), array('tree' => 2, 'excluded_pages' => setting("nav_excluded_pages"), 'excluded_templates' => setting("nav_excluded_templates")))?>
				</ul>
			</nav>
		</div>
        <?php if (count(setting("header_image"))): ?>
            <div class="header-image"><img src="<?=setting('header_image')->size(1200,240)->url?>" alt="<?=setting('settings')->headline?>" />
        <?php endif; ?>
		<div class="site-title">
			<h1><a href="<?=setting("homepage")->url?>"><?=setting("settings")->headline?></a></h1>
		</div>
        <?php if (count(setting("header_image"))): ?>
        </div>
    <?php endif; ?>
	</header>

	<div class="breadcrumb nav">
		<?=$wb->renderBreadcrumb(page())?>
	</div>

	<div class='body'>
		<h1 class="page-title"><?=setting('title')?></h1>
		<div class='main-content' id="content">
			<?=$content?>
		</div>
		<?php if($sidebar): ?>
		<div class='sidebar'>
			<?=$sidebar?>
		</div>
		<?php endif; ?>
	</div>

	<footer class='footer'>
		<div class="footer-content">
		<?= $wb->widgets(setting("settings"), "widgets") ?>
		<?=$wb->renderLogoutLink($user)?>
		</div>
	</footer>
</div>
<!-- end container -->
<div class="mobile-menu mobile">
<nav class="mobile-nav">
	<ul class="mobile-topnav">
		<?=$wb->renderNavigation(setting("homepage")->children->prepend(setting("homepage")), array('tree' => 2, 'excluded_pages' => setting("nav_excluded_pages"), 'excluded_templates' => setting("nav_excluded_templates"), 'current_class' => 'mm-current', 'has_sublevel_class' => 'mm-parent','active_class' => 'mm-current'))?>
	</ul>
</nav>
</div>
<div class="mobile-header mobile">
<span class="reveal-mobile-menu"></span>
</div>
<?=$wb->isEditable()?>
<script src="<?=$wb->makeAssetLink(urls('templates').'vendor/jquery/jquery.min.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'vendor/jquery/jquery-migrate-3.0.0.min.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'vendor/lightcase/vendor/jQuery/jquery.events.touch.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'vendor/lightcase/src/js/lightcase.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'vendor/slick/slick.min.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'js/main.min.js')?>"></script>
<?=setting("foot_script")?>
</body>
</html>
