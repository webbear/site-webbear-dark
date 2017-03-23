<?php

/**
 * ProcessWire Table Fieldtype: Rows
 *
 * Part of the ProFields package
 * Please do not distribute. 
 * 
 * Copyright 2014 by Ryan Cramer
 *
 * http://processwire.com
 *
 */

class TableRows extends WireArray {

	protected $field = null;
	protected $page = null;

	public function __construct(Page $page, Field $field) {
		$this->page = $page; 
		$this->field = $field; 
		
	}
	public function makeBlankItem() {
		return new TableRow($this->field);
	}

	public function makeNew() {
		return new TableRows($this->page, $this->field); 
	}

	public function __get($key) {
		if($key == 'labels') return $this->getLabels();
		if($key == 'columns') return $this->getColumns();
		return parent::get($key); 
	}

	/**
	 * Return array of information about all columns
	 *
	 * @return array
	 *
	 */
	public function getColumns() {
		return $this->field->type->getColumns($this->field); 
	}

	/**
	 * Return array of information about the column
	 *
	 * @param int|string Column number or name
	 * @return array
	 *
	 */
	public function getColumn($n) {
		return $this->field->type->getColumn($this->field, $n); 
	}

	/**
	 * Return array of all column labels (indexed by column name)
	 *
	 * @return array
	 *
	 */
	public function getLabels() {
		$labels = array();
		$columns = $this->getColumns();
		foreach($columns as $col) {
			$labels[$col['name']] = $col['label']; 
		}
		return $labels;
	}

	/**
	 * Return the label for this column
	 *
	 * @param int|string Column number or name
	 * @return string
	 *
	 */
	public function getLabel($n) {
		$col = $this->getColumn($n); 
		return $col['label']; 
	}

	/**
	 * Render a basic table containing the data from this TableRows
	 *
	 * @param array $options 
	 *	tableClass: class name for table (default=ft-table)
	 *	columnClass: class name for each column, col name will be appended: (default=ft-table-col)
	 *	useWidth: boolean indicating whether to use width attributes in columns (default=true)
	 * @return string
	 *
	 */
	public function ___render($options = array()) {
		if(!$this->count()) return '';

		$defaults = array(
			'tableClass' => 'ft-table',
			'columnClass' => 'ft-table-col',
			'useWidth' => true, 
			);

		$of = $this->page->of();
		$this->page->of(true); // ensure output formatting is on
		$rows = $this->page->get($this->field->name); // make sure we have a formatted value

		$options = array_merge($defaults, $options); 
		$columns = $rows->getColumns(); 
		$sanitizer = $this->wire('sanitizer'); 

		$out = "<table class='$options[tableClass]'><thead><tr>";
		$attrs = array();

		foreach($columns as $col) {
			$name = $col['name'];
			$attr = '';
			if($options['columnClass']) $attr .= " class='$options[columnClass] $options[columnClass]-$name'";
			if($options['useWidth']) $attr .= $col['width'] ? " width='$col[width]%'" : '';
			$attrs[$name] = $attr;
			$label = $col['label'];
			if(!$label) $label = $name; 
			$out .= "<th$attr>" . $sanitizer->entities($label) . "</th>";
		}

		$out .= "</tr></thead><tbody>";

		foreach($rows as $row) {
			$out .= "<tr>";
			foreach($columns as $col) {
				$name = $col['name']; 
				$attr = $attrs[$name];
				$value = $row->$name; 
				if(is_array($value)) $value = implode('<br />', $value); 
				$out .= "<td$attr>$value</td>";
			}
			$out .= "</tr>";
		}

		$out .= "</tbody></table>";

		$this->page->of($of); // restore
		return $out; 
	}

	/**
	 * Clone this field value
	 *
	 * Ensure that the individual items are cloned and that they have no ID property.
	 *
	 */
	public function __clone() {
		foreach($this->data as $key => $item) {
			$copy = clone $item; 
			$copy->id = null;
			$this->data[$key] = $copy; 
		}
	}

}
