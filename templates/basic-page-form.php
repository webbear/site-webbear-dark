<?php

if ($page->form_name) {
	$form = $forms->render($page->form_name);

	$headScript .= $form->styles;
	$headScript .= $form->scripts;
	
	$content .= "<div class='form'>" . $form . "</div>";
}

//if($page->hasChildren) $content .= renderNav($page->children, 0, 'summary');

// // sidebar
// if($page->rootParent->hasChildren > 1) {
//     $sidebar = $wb->renderNav($page->rootParent, 3);
//     $sidebar .= ($page->sidebar)? $page->sidebar: $settings->sidebar;
// }
//
