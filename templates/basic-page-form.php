<?php


if ($page->form_name) {
	$content .= "<div class='form'>" . $forms->load($page->form_name)->render(). "</div>";
}

//if($page->hasChildren) $content .= renderNav($page->children, 0, 'summary');

// // sidebar
// if($page->rootParent->hasChildren > 1) {
//     $sidebar = $wb->renderNav($page->rootParent, 3);
//     $sidebar .= ($page->sidebar)? $page->sidebar: $settings->sidebar;
// }
//
