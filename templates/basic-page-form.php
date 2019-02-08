<?php namespace ProcessWire;

$content .= page()->render->form_name;

//if($page->hasChildren) $content .= renderNav($page->children, 0, 'summary');

// // sidebar
// if($page->rootParent->hasChildren > 1) {
//     $sidebar = $wb->renderNav($page->rootParent, 3);
//     $sidebar .= ($page->sidebar)? $page->sidebar: $settings->sidebar;
// }
//
