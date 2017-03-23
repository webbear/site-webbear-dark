<?php namespace ProcessWire;

if(!defined("PROCESSWIRE")) die(); 
	
/** @var AdminThemeUikit $adminTheme */
/** @var Paths $urls */
/** @var Config $config */
/** @var WireInput $input */
/** @var Sanitizer $sanitizer */
/** @var Page $page */

$treePaneLocation = 'east';
$sidePaneLocation = 'west';
	
$mainURL = $page->url();
if($input->get('id')) $mainURL .= "?id=" . (int) $input->get('id');
	
?><!DOCTYPE html> 
<html class="pw" lang="<?php echo $adminTheme->_('en');
	/* this intentionally on a separate line */ ?>">
<head>
	<title></title><?php /* this title is populated dynamically by JS */ ?>
	
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex, nofollow" />
	<meta name="google" content="notranslate" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="<?php echo $config->urls->adminTemplates; ?>layout/source/stable/layout-default.css">
	
	<style type='text/css'>
		html, body {
			width: 100%;
			height: 100%;
			padding: 0;
			margin: 0;
			overflow: auto; /* when page gets too small */
		}
		.pane {
			display: none; /* will appear when layout inits */
		}
		iframe {
			margin: 0;
			padding: 0;
		}
		.ui-layout-pane {
			padding: 0;
		}
	</style>
	
	<script src='<?php echo $config->urls('JqueryCore')?>JqueryCore.js'></script>
	<script src='<?php echo $config->urls('JqueryUI')?>JqueryUI.js'></script>
	<script src="<?php echo $config->urls->adminTemplates; ?>layout/source/stable/jquery.layout.js"></script>
</head>
<body class=''>	

  	<iframe id='pw-admin-main' name='main' class="pane ui-layout-center" src='<?php 
        echo $mainURL; ?>?layout=sidenav-main'></iframe>
	<iframe id='pw-admin-side' name='side' class="pane ui-layout-<?php echo $sidePaneLocation; ?>" src='<?php 
		echo $urls->admin; ?>login/?layout=sidenav-side'></iframe>
	<iframe id='pw-admin-tree' name='tree' class="pane ui-layout-<?php echo $treePaneLocation; ?>" src='<?php 
		echo $urls->admin; ?>page/?layout=sidenav-tree'></iframe>
    
	<script>
		var windowWidth = $(document).width();
		var minSize = windowWidth / 4;
		var layoutOptions = {
			resizable: true,
			slidable: true,
			closable: true,
			maskContents: true,
			<?php 
			echo "$sidePaneLocation: { minSize: (minSize > 200 ? minSize : 200) },";
			echo "$treePaneLocation: { minSize: (minSize > 400 ? minSize : 400), initClosed: true }";
			?>
		};
			
		var layout = $('body').layout(layoutOptions);

		$('#pw-admin-main').on('load', function() {
			// populate title from main pane to this window
			var title = $('#pw-admin-main')[0].contentWindow.document.title; 
			$('title').text(title);
		});
	
		var mobileWidth = 959;
		var lastWidth = 0;
		
		$(window).resize(function() {
			var width = $(window).width();
			if(width <= mobileWidth && lastWidth > mobileWidth) {
				<?php echo "if(!layout.state.$sidePaneLocation.isClosed) layout.close('$sidePaneLocation');"; ?>
				<?php echo "if(!layout.state.$treePaneLocation.isClosed) layout.close('$treePaneLocation');"; ?>
			} else if(lastWidth <= mobileWidth && width > mobileWidth) {
				<?php echo "if(layout.state.$sidePaneLocation.isClosed) layout.open('$sidePaneLocation');"; ?>
			}
			lastWidth = width;
		}).resize();
		
		function toggleSidebarPane() {
			layout.toggle('<?php echo $sidePaneLocation; ?>');
		}
		function toggleTreePane() {
			layout.toggle('<?php echo $treePaneLocation; ?>');
		}
	</script>

</body>
</html>