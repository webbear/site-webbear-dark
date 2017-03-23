<?php namespace ProcessWire;

if(!defined("PROCESSWIRE")) die();

/** @var AdminThemeUikit $adminTheme */
/** @var Paths $urls */

?>

<!-- OFFCANVAS NAV TOGGLE -->
<a id='offcanvas-toggle' class='uk-hidden' href="#offcanvas-nav" uk-toggle>
	<?php echo $adminTheme->renderIcon('bars fa-lg'); ?>
</a>

<!-- OFFCANVAS NAVIGATION -->
<div id="offcanvas-nav" uk-offcanvas>
	<div class="uk-offcanvas-bar">
		<?php include(__DIR__ . '/_search-form.php'); ?>
		<ul class='pw-sidebar-nav uk-nav uk-nav-primary uk-nav-parent-icon' data-uk-nav='animation: false; multiple: true;'>
			<?php echo $adminTheme->renderSidebarNavItems(); ?>
		</ul>	
	</div>
</div>

