<?php

/**
 * ProcessWire Form Builder Template File
 *
 * This template file handles display of a form within an iframe, for embed
 * options A and B. It corresponds with template 'form-builder' in ProcessWire.
 *
 * This template file should be placed in /site/templates/form-builder.php,
 * or you may make it a symlink to /site/modules/FormBuilder/form-builder.php
 *
 * Copyright (C) 2012 by Ryan Cramer Design, LLC
 * 
 * PLEASE DO NOT DISTRIBUTE
 * 
 */

if(!defined("PROCESSWIRE")) die();

// form-builder.inc is an optional include file you may create (in /site/templates/) if you want 
// to init custom hook functions specific to Form Builder
if(is_file("./form-builder.inc")) include_once("./form-builder.inc");

/*************************************************************************************************/

if($input->get->view_file) $forms->viewFile($input->get->view_file); 

$content = '';
$modules->get('JqueryCore');
$formName = $sanitizer->pageName($input->urlSegment1); 

// we don't allow loading forms by ID, so that a curious person can't track down all the forms by incrementing the ID
if(ctype_digit("$formName") && $user->isGuest()) throw new Wire404Exception(); 

if($formName) {
	$form = $modules->get('FormBuilder')->load($formName);
	if($form) $content = $form->render();
} else $form = null;

if(empty($content)) {
	if($page->editable()) {
		$pages->error("No form ID provided in the URL segment"); 
		$content = "This page is not intended for direct access.";
	} else throw new Wire404Exception();
}

$adminTemplates = $config->urls->root . 'wire/templates-admin/';
$config->styles->prepend($adminTemplates . 'styles/reset.css'); 
$config->styles->append($adminTemplates . "styles/inputfields.css"); 
$config->styles->append($config->urls->FormBuilder . 'form-builder.css'); 

$config->scripts->append($adminTemplates . "scripts/inputfields.js"); 
$config->scripts->append($config->urls->FormBuilder . "form-builder.js"); 

if($form) {
	// load custom theme stylesheets and JS files, where found
	if(!$form->theme) $form->theme = 'default';
	foreach(array('jquery-ui', 'inputfields', 'main') as $file) {
		$path = $forms->themesPath($form->theme) . $file;
		$url = $forms->themesURL($form->theme) . $file;
		if(is_file("$path.css")) $config->styles->append("$url.css"); 
		if(is_file("$path.js")) $config->scripts->append("$url.js"); 
	}
}

?><!DOCTYPE html>
<html lang="<?php echo __('en', __FILE__); // HTML tag lang attribute
	/* this intentionally on a separate line */ ?>"> 
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex, nofollow" />

	<!--[if IE]>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<![endif]-->

	<title><?php echo $page->title; ?></title>

	<?php foreach($config->styles->unique() as $file) echo "\n\t<link type='text/css' href='$file' rel='stylesheet' />"; ?>

	<style type='text/css'>
		.container { width: 100%; margin: 0; min-width: 100px; }
		#content { margin: 0; padding: 0; }
	</style>

	<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="<?php echo $adminTemplates; ?>styles/ie.css" />
	<![endif]-->	

	<?php foreach($config->scripts->unique() as $file) echo "\n\t<script type='text/javascript' src='$file'></script>"; ?>

</head>
<body class='modal'>
	<div id="content" class="content">
		<div class='container'>

		<?php echo $content; ?>

		</div>
	</div>
</body>
</html>
