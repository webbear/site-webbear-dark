<?php

/*
	all used functions
*/


class Utilities {

	/////////////////////////////////////////////
	//  navigation
	/////////////////////////////////////////////
	public function renderNav($items, $maxDepth = 0, $fieldNames = '', $class = 'nav', $excludeTemplates = array('product', 'checkout', 'cart', 'news')) {

		if($items instanceof Page) $items = array($items);

		$out = '';

		foreach($items as $item) {
			if ( in_array($item->template, $excludeTemplates)) continue;

			$out .= $item->id == wire('page')->id ? "<li class='current'>" : "<li>";

			$out .= "<a href='$item->url'>$item->title</a>";

			if($fieldNames) foreach(explode(' ', $fieldNames) as $fieldName) {
				$value = $item->get($fieldName);
				if($value) $out .= " <div class='$fieldName'>$value</div>";
			}

			if($item->hasChildren() && $maxDepth) {
				if($class == 'nav') $class = 'nav nav-tree';
				$out .= $this->renderNav($item->children, $maxDepth-1, $fieldNames, $class);
			}

			$out .= "</li>";
		}

		if($out) $out = "<ul class='$class'>$out</ul>";

		return $out;
	}

	public function renderNavigation(PageArray $items, $options = array(), $level = 0) {

	$defaults = array(
		'tree' => 2, // number of levels it should recurse into the tree
		'dividers' => false,
		'current_class' => 'current',
		'has_sublevel_class' => 'parent',
		'first_child_class' => 'first-child',
		'last_child_class' => 'last-child',
		'sublevel_class' => 'subnav',
		'level_class' => 'level-',
		'repeat' => false, // whether to repeat items with children as first item in their children nav
		'excluded_pages' => 'site-map',
		'excluded_templates' => 'news|events'
		);

	$options = array_merge($defaults, $options);
	$divider = $options['dividers'] ? "<li class='divider'></li>" : "";
	$page = wire('page');
	$out = '';
	$c = 0;
	$lc = $level + 1;
	foreach($items as $item) {
		++$c;
		$numChildren = $item->numChildren(true);
		if($level+1 > $options['tree'] || $item->id == 1 ) $numChildren = 0;

		if(in_array($item->name, explode("|",$options['excluded_pages']))) continue;
		if(in_array($item->template, explode("|", $options['excluded_templates']))) continue;
		$total = count($items) - count(explode("|",$options['excluded_pages'])) - count(explode('|',$options['excluded_templates']));
		$class = '';
		if($numChildren) $class .= $options['has_sublevel_class']." ";
		if($page->id == $item->id) $class .= $options['current_class']." ";
		if(($item->id > 1 && $page->parents->has($item)) || $page->id == $item->id) $class .= "active ";
		$class .= " nav-item-".$c;
		if($c == 1) $class .= " ".$options['first_child_class'];
		if($level == 0 && $c ==  $total) $class .= " ".$options['last_child_class'];
		if($level > 0 && $c ==  count($items)) $class .= " ".$options['last_child_class'];
		if($class) $class = " class='" . trim($class) . "'";

		$out .= "$divider<li$class><a href='$item->url'>$item->title</a>";

		if($numChildren) {
			$out .= "<ul class='{$options['sublevel_class']} {$options['level_class']}$lc'>";
			if($options['repeat']) $out .= "$divider<li><a href='$item->url'>$item->title</a></li>";
			$out .= $this->renderNavigation($item->children, $options, $level+1);
			$out .= "</ul>";
		}

		$out .= "</li>";
	}

	$pattern = '~<ul[^>]*>(</ul>)~s';
	return preg_replace($pattern, "", $out);
	//return $out;
}

	public function renderUtilityNav( $options = array()) {
		$defaults = array(
			'print' => true,
			'pages' => 'site-map',
			'top_id' => '#top'
		);
		$options = array_merge($defaults, $options);
		$list = array();
		$list = explode("|",$options['pages']);
		$out ='';
		$c = 0;
		foreach($list as $l) {
			$c++;
			$el = wire('pages')->get('/'.$l.'/');
			$first = ($c == 1) ? ' first-child' : '';
			$last = ($options['print'] == false && $c == count($list) ) ? ' last-child' : '';
			if ($l=='top') {
				$url = $options['top_id'];
				$title = __('Top');
				$name = "top";
			} elseif ($l == 1) {
				$home = wire('pages')->get(1);
				$url = $home->url;
				$title = $home->title;
				$name = 'home';
			} else {
				$url =$el->url;
				$title = $el->title;
				$name = $el->name;
			}
			$out .= "<li class='item-{$name}{$first}{$last}'><a href='{$url}'>{$title}</a></li>";
		}
		if ($options['print']) {
			$out .= "<li class='item-print'><a href='#' onclick='window.print()'>".__('Print')."</a></li>";
		}
		return $out;

	}


	public function renderBreadcrumb($page, $options = array()) {
		$defaults = array(
			'show_current' => true,
			'show_home' => true
		);
		$options = array_merge($defaults, $options);
		$parents = $page->parents();
		$out = "<ul class='breadcrumbs'>";
		$c = 0;
		foreach($parents as $item) {
			++$c;
			if ($item->id == 1 && $options['show_home'] == false) continue;
			$out .= "<li class='crumbs crumb-{$c} crumb-{$item->name}'><a href='$item->url'>$item->title</a></li>";
		}
		if ($options['show_current']) $out .= "<li class='crumbs crumb-current last'>$page->title</li>";
		$out .= "</ul>";
		return $out;
	}


	public function cssClasses() {
		$out='';
		$page = wire('page');
		$language = wire('user')->language->name;
		$classes = array();

		//get the segments
		if ($page->id == 1) {
			if ($page->path != "/") {
				$segment1 = str_replace('/','', $page->path);
				$classes[] = "homepage-$segment1";
			} else {
				$classes[] = "homepage";
			}
		} else {
			$segments = array();
			$segments= explode( " ", trim(str_replace("/", " ", $page->path)));
			for ($i=0; $i < count($segments); $i++) {
				$segment = $segments[$i];
				$classes[] = (is_numeric(substr($segment,0,1))) ? 'n'.$segment : $segment;
			}
		}
		$classes[] = "page-$page->id";
		$classes[] = ($page->id != 1) ? "page-$page->name" : "page-home";
		$classes[] = ($page->rootParent->id != 1) ? "section-{$page->rootParent->name}" : "";
		$classes[] = "template-" . $page->template->name;
		$classes[] = "language-" . $language;

		$out = implode(' ', $classes);
		return $out;
	}

	// renders an updated time stamp on assets files
	public function makeAssetLink($filename){
		if ($filename == '') return;
		$out = '';
		if (file_exists($_SERVER["DOCUMENT_ROOT"].$filename))
		{
			$fileTime = date('Y-m-d-H:i:s', filemtime($_SERVER["DOCUMENT_ROOT"].$filename));
			$out = $filename . '?updated=' . $fileTime;
		}
		else
		{
			$out = $filename ;
		}
		return $out;
	}

	/////////////////////////////////////////////
	//  user utilities
	/////////////////////////////////////////////

    public function  renderLogoutLink($user){
    	$out='';
    	$config = wire('config');

    	if ($user->isLoggedin()) {
    		$out .= "<div class='logout-link'><a href='/logout/?redirect=".wire('page')->id."'>({$user->name}) - Abmelden</a></div>";
    	}
    	return $out;
    }
	// renders an 'edit' link
	public function isEditable($class= 'edit'){
		$out = '';
		$pageEdit = page()->editURL;
		if (page()->editable()) {
			$out = "<div class='{$class}'><a href='{$pageEdit}'>".__('Edit') ."</a></div>";
		}
		return $out;
	}

	// navigation
	public function subNavWidget($class='sub-nav widget', $level = 3, $wrap = 'div') {
		if(page("rootParent")->hasChildren > 1) {
			return "<{$wrap} class='{$class}'>". $this->renderNav(page('rootParent'), $level) ."</{$wrap}>";
		}
	}

	public function prepend($first, $second) {
		return $first . $second;
	}

	public function image($img) {
	return "<img src='{$img->url}' alt='{$img->description}' width='{$img->width}' height='{$img->height}' />";
	}

	public function randomImage($images, $options = array()) {
		$defaults = array(
			'upscaling' => true,
			'width' => 480,
			'height' => 0,
			'wrap' => true,
			'wrap_tag' => 'div',
			'wrap_class' => 'random-image'
		);
		$options = array_merge($defaults, $options);
		$o = '';
		if (count($images)) {
			$image = $this->image($images->getRandom()->size($options['width'],$options['height'], array('upscaling' => $options['upscaling'])));
			if ($options['wrap']) {
				$o = $this->wrap($image, $options['wrap_class'], $options['wrap_tag']);
			} else {
				$o = $image;
			}
		}
		return $o;
	}

	public function firstImage($images, $options = array()) {
	$defaults = array(
		'resize' => true,
		'width' => 480,
		'height' => 0,
		'wrap' => true,
		'wrap_tag' => 'div',
		'wrap_class' => 'image'
	);

	$options = array_merge($defaults, $options);

	$out = '';
	if(count($images)) {
		$image = $images->first();
		$thumb = ($options['resize']) ? $image->size($options['width'],$options['height']) : $image;
		$description = ($image->description) ? $image->description : '';
		$img = "<img src='{$thumb->url}' alt='{$description}' width='{$thumb->width}' height='{$thumb->height}' />";
		if($options['wrap']) {
			$out .= "<{$options['wrap_tag']} class='{$options['wrap_class']}'>{$img}</{$options['wrap_tag']}>";
		}
		else
		{
			$out .= $img;
		}
	}
	return $out;

	}

	public function paragraph($p) {
		return "<p>{$p}</p>";
	}

	public function headline($headline, $tag= "h3") {
		return "<{$tag}>" . $headline . "</{$tag}>";
	}

	public function description($text, $class="description", $tag = "div") {
		return "<{$tag} class='{$class}'>" .$text . "</{$tag}>";
	}
	public function wrap($object, $class="item", $tag = "div") {
		return "<{$tag} class='{$class}'>" .$object . "</{$tag}>";
	}

	public function link($link = null, $object, $linkText = '',  $fa = "<span class='link'><i class='fa fa-angle-double-right' aria-hidden='true'></i></span>") {
		if ($link != null) {
			return $object;
		} else {
			return "<a href='{$link}'>" . $object  . $linkText.  $fa . "</a>";
		}
	}


	public function tagStripper($str) {
		if (!isset($str)) return;
		$temp = preg_replace('#<[^>]+>#', ' ', $str);
		$out = trim(preg_replace('/\s+/', ' ',$temp));
		return $out;
	}

	public function wordLimiter($str = '', $limit = 120, $endstr = '...'){
		if ($str == '') return '';
		if(strlen($str) <= $limit) return $str;
		$out = substr($str, 0, $limit);
		$pos = strrpos($out, " ");
		if ($pos>0) {
			$out = substr($out, 0, $pos);
		}
		$out .= $endstr;
		return $out;
	}
}

$wb = new Utilities();