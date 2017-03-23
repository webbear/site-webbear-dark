<?php

/**
 * ProcessWire Multiplier Array
 *
 * Part of the ProFields package
 * Please do not distribute. 
 * 
 * Copyright 2014 by Ryan Cramer
 *
 * http://processwire.com
 *
 */

class MultiplierArray extends WireArray {

	public function isValidItem($item) {
		// accept non-Wire objects, which WireArray doesn't do by default
		return true; 
	}

	public function makeBlankItem() {
		return '';
	}

	protected function usesNumericKeys() {
		return true; 
	}

	/**
	 * Render method, primarily for testinga and quick usages
	 *
	 * Usually you would iterate and render the items yourself, but this may be handy sometimes.
	 *
	 * @param string $class Class name for the <ul>, default=FieldtypeMultiplier
	 * @return string
	 *
	 */
	public function render($class = 'FieldtypeMultiplier') {
		$out = '';
		foreach($this as $value) {
			$out .= "<li>$value</li>"; 	
		}
		if($out) {
			$class = $class ? " class='$class'" : "";
			$out = "<ul$class>$out</ul>";
		}
		return $out; 
	}
}
