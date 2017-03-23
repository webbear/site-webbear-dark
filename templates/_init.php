<?php


$homepage = pages('/');
$settings = pages('/settings/');

$browserTitle = page('browser_title|headline|title') . ' - ' . $settings->headline;
$title = page('headline|title'); // headline if available, otherwise title
$content = page()->render->body;
$sidebar = ($page->sidebar) ? $page->sidebar : $settings->sidebar;

$headScript ='';
$footScript ='';

//
// if (strpos($content, "data-lightbox")) {
//     $headScript .= "<link rel='stylesheet' href='{$config->urls->templates}bower_components/lightbox2/dist/css/lightbox.css' media='screen' />";
//     $footScript .= "<script src='{$config->urls->templates}bower_components/lightbox2/dist/js/lightbox.min.js'></script>";
// }
//
// if (strpos($content, "class='swipebox'")) {
//     $headScript .= "<link rel='stylesheet' href='{$config->urls->templates}bower_components/swipebox/src/css/swipebox.min.css' media='screen' />";
//
//     $footScript .= "<script src='{$config->urls->templates}bower_components/swipebox/src/js/jquery.swipebox.js'></script>\n"."<script>\n;( function( $ ) {\n $( document ).swipebox({selector: '.swipebox'});\n } )( jQuery );\n</script>";
// }

include_once("./_func.php");
