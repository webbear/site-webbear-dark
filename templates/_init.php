<?php
include_once("./_func.php");

$homepage = pages('/');
$settings = pages('/settings/');
$navExcludedPages = ($settings->browser_title) ? $settings->browser_title : "site-map";
$navExcludedTemplates = ($settings->custom_text_input) ? $settings->custom_text_input : "settings|news|events";

$headScript ='';
$footScript ='';

$browserTitle = page('browser_title|headline|title') . ' - ' . $settings->headline;
$title = page('headline|title'); // headline if available, otherwise title
$content = page()->render->body;
$headerImage = ($settings->images->count) ? $settings->images->first() : '';


$sidebar = '';


if (page("images")) {
  if (page('images')->count && page('images')->findTag('sidebar')->count) {
    $sidebar .= "<div class='sidebar-images'>";
    foreach(page('images')->findTag('sidebar') as $image) {
      $sidebar .= "<div class='image'>" . $wb->image($image->size(420,0)) ."</div>";
      }
    $sidebar .=  "</div>";
  }
  if (page('images')->count && page('images')->findTag('header')->count) {
    $headerImage = page('images')->findTag('header')->first();
  }
}

if (page()->sidebar) {
  $sidebar .= $page->sidebar;
}