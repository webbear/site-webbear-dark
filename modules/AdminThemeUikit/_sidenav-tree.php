<?php namespace ProcessWire;

/**
 * _sidenav-tree.php
 *
 */

/** @var Config $config */
/** @var AdminThemeUikit $adminTheme */
/** @var User $user */

if(!defined("PROCESSWIRE")) die();

if(!isset($content)) $content = '';

?><!DOCTYPE html>
<html class="pw" lang="<?php echo $adminTheme->_('en');
	/* this intentionally on a separate line */ ?>">
<head>
	<?php include($config->paths->adminTemplates . '_head.php'); ?>
</head>
<body class='<?php echo $adminTheme->getBodyClass(); ?>'>
	<main id='main' class='pw-container uk-container uk-container-expand uk-margin uk-margin-large-bottom'>
		<div class='pw-content' id='content'>
			<div id='pw-content-body'>
				<?php echo $content; ?>
			</div>	
		</div>
	</main>
	<script>
		$(document).on('mouseover', 'a', function(e) {
			var $a = $(this);
			var href = $a.attr('href');
			if(href.length > 1 && !$a.attr('target')) {
				$a.attr('target', 'main');
			}
		});
	</script>
</body>
</html>
