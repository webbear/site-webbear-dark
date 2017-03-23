<?php

/**
 * ProcessWire Textareas Data
 *
 * Serves as the value for Textareas fields. 
 *
 * Part of the ProFields package.
 * Please do not distribute. 
 * 
 * Copyright (C) 2014 by Ryan Cramer 

 * http://processwire.com
 *
 */

class TextareasData extends WireData {

	/**
	 * Field that this TextareasData applies to
	 *
	 * @var Field
	 *
	 */
	protected $field = null;

	/**
	 * Set the Field that this TextareasData applies to
	 *
	 * @param Field
	 *
	 */
	public function setField(Field $field) {
		$this->field = $field; 
	}

	/**
	 * Get the Field that this TextareasData applies to
	 *
	 * @return Field
	 *
	 */
	public function getField() {
		return $this->field; 
	}

	/**
	 * Get the label (text) for the given Textareas property or blank if not found
	 *
	 * @return string
	 *
	 */
	public function label($name) {
		if(!$this->field) return '';
		return $this->field->type->getLabel($this->field, $name); 
	}

	/**
	 * Convert this TextareasData to a string
	 *
	 * @return string
	 *
	 */
	public function __toString() {
		$out = '';
		foreach($this as $key => $value) {
			$out .= "\n\n$key=$value";	
		}
		$out = trim($out); 
		return $out; 
	}

	/**
	 * Default rendering (to be used mostly for testing)
	 *
	 * @param string Headline type (default = h2)
	 * @return string
	 *
	 */
	public function render($headlineType = 'h2') {
		$out = '';
		$headlineType = $this->wire('sanitizer')->entities($headlineType); 
		foreach($this as $key => $value) {
			if(!strlen($value)) continue; 
			if($headlineType) $out .= "<$headlineType>" . $this->label($key) . "</$headlineType>";
			if(strpos($value, '<') === false || !preg_match('{</[a-z]+[0-9]*>}i', $value)) {
				$out .= "<p>$value</p>"; // doesn't already have markup, so add some
			} else {
				$out .= "$value"; // already has markup
			}
		}
		return $out; 
	}

}
