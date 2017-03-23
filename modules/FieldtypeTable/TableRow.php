<?php

/**
 * ProcessWire Table Fieldtype: Row
 *
 * Part of the ProFields package
 * Please do not distribute. 
 * 
 * Copyright 2014 by Ryan Cramer
 *
 * http://processwire.com
 *
 */

class TableRow extends WireData {

	protected $field = null;

	public function __construct(Field $field, array $cols = array()) {

		$this->field = $field; 
		parent::__construct();

		// establish blank placeholder values
		for($n = 1; $n <= $field->numCols; $n++) {
			$name = $field->{"col{$n}name"}; 	
			$this->set($name, '');  
		}

		// populate actual values, when available
		foreach($cols as $key => $value) {
			$this->set($key, $value); 
		}
	}

	public function set($key, $value) {
		if($key == 'data') $key = 'id';
		return parent::set($key, $value); 
	}

}
