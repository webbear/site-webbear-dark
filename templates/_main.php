<!DOCTYPE html>
<html class="<?=$wb->cssClasses() ?>">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="initial-scale=1.0, width=device-width" />
	<title><?= $browserTitle; ?></title>

	<?php if($page->summary):?>
		<meta name="description" content="<?= $wb->tagStripper($page->summary); ?>" />
	<?php endif; ?>

	<link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="<?=$wb->makeAssetLink(urls('templates').'css/main.css') ?>" media="all" />
    <link rel="stylesheet" type="text/css" href="<?=$wb->makeAssetLink(urls('templates').'js/lightcase/src/css/lightcase.css') ?>" media="all" />

	<?=$headScript?>
	<link rel="icon" type="image/x-icon" href="<?=$wb->makeAssetLink(urls('templates') .'images/favicon.ico')?>" />
</head>
<body id="top" class="<?php if($sidebar) {echo "has-sidebar";} else {echo "full-width";}?>">
<div class="container">
	<header class="header<?php if(count($settings->images)) echo ' has-image'; ?>">
		<div class="top-bar">
			<nav class="top-nav">
				<ul class='topnav'>
					<?=$wb->renderNavigation($homepage->children->prepend($homepage), array('tree' => 2, 'excluded_pages' => $navExcludedPages, 'excluded_templates' => $navExcludedTemplates))?>
				</ul>
			</nav>
		</div>
        <?php if (count($settings->images)): ?>
            <div class="header-image"><img src="<?=$settings->images->first()->size(1200,240)->url?>" alt="<?=$settings->headline?>" />
        <?php endif; ?>
		<div class="site-title">
			<h1><a href="<?=$homepage->url?>"><?=$settings->headline?></a></h1>
		</div>
        <?php if (count($settings->images)): ?>
        </div>
    <?php endif; ?>
	</header>

	<div class="breadcrumb nav">
		<?=$wb->renderBreadcrumb(page())?>
	</div>

	<div class='body'>
		<h1 class="page-title"><?=$title; ?></h1>
		<div class='main-content'>
			<?=$content; ?>
		</div>
		<?php if($sidebar): ?>
		<div class='sidebar'>
			<?php echo $sidebar; ?>
		</div>
		<?php endif; ?>
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
<script src="<?=$wb->makeAssetLink(urls('templates').'js/libs/jquery.min.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'js/libs/jquery-migrate-3.0.0.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'js/lightcase/vendor/jQuery/jquery.events.touch.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'js/lightcase/src/js/lightcase.js') ?>"></script>
<script src="<?=$wb->makeAssetLink(urls('templates').'js/main.min.js')?>"></script>
<?=$footScript?>
</body>
</html>
