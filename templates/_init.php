<?php namespace ProcessWire;

setting([
  "homepage" => pages('/'),
  "settings" => pages('/settings/')
]);

setting([
  "browser_title" => page('browser_title|headline|title') . ' - ' . setting("settings")->headline,
  "title" => page('headline|title'),
  "nav_excluded_pages" => setting("settings")->browser_title ? setting("settings")->browser_title : "site-map",
  "nav_excluded_templates" => setting("settings")->custom_text_input ? setting("settings")->custom_text_input : 'settings|news|events',
  "content" => page()->render->body,
  "head_script" => '',
  "foot_script" => '',
  "header_image" => setting("settings")->images->count ? setting("settings")->images->first() : '',
  "sidebar" => null,
  "repeater_widgets" => "widgets",
  "repeater_elements" => ["headline", "small_text"]
]);

$content = page()->render->body;
$sidebar = '';

if (setting("header_image") != '') {
  if (setting("settings")->images->getTag("header")) {
    setting(["header_image" => setting("settings")->images->getTag("header")]);
  }
}

// $homepage = pages('/');
// $settings = pages('/settings/');
// $navExcludedPages = ($settings->browser_title) ? $settings->browser_title : "site-map";
// $navExcludedTemplates = ($settings->custom_text_input) ? $settings->custom_text_input : "settings|news|events";

// $headScript ='';
// $footScript ='';

//$browserTitle = page('browser_title|headline|title') . ' - ' . $settings->headline;
//$title = page('headline|title'); // headline if available, otherwise title
//$content = page()->render->body;
//$headerImage = ($settings->images->count) ? $settings->images->first() : '';





if (page("images")) {

  if (page('images')->count && page('images')->findTag('sidebar')->count) {
    $sidebar .= "<div class='sidebar-images'>";
    foreach(page('images')->findTag('sidebar') as $image) {
      $sidebar .= "<div class='image'>" . $wb->image($image->size(420,0)) ."</div>";
      }
    $sidebar .=  "</div>";


  }
  if (page('images')->count && page('images')->findTag('header')->count) {
    setting(["header_image" => page('images')->findTag('header')->first()]);
  }
}

if (page()->sidebar) {
  $sidebar .= page()->sidebar;
}

include_once("./_func.php");