/**
 * ProcessWire Table Inputfield
 *
 * Field that lets you define a database table of custom inputs. 
 *
 * Part of the ProFields package
 * Please do not distribute. 
 * 
 * Copyright 2014 by Ryan Cramer
 *
 * http://processwire.com
 *
 */

function InputfieldTableSortable($table) {
	if(!$table.is("tbody")) $table = $table.find("tbody");
	$table.sortable({
		axis: 'y', 
		handle: '.InputfieldTableRowSortHandle',
		stop: function(ui, event) {
			var n = 0;
			$(this).find(".InputfieldTableRowSort").each(function() {	
				n++;
				if(n == 1) return; // skip template row
				$(this).val(n-1);
			});
		}
	});

	// if there is only a template row, then don't show the table at all (to hide the header)
	var numRows = $table.find('tr').size();
	if(numRows == 1) $table.parent('table').hide();
}

$(document).ready(function() {

	$('a.InputfieldTableAddRow').click(function() {
		var $table = $(this).closest('.Inputfield').find('table');
		var $tbody = $table.find('tbody');
		var numRows = $tbody.children('tr').size(); 
		var $row = $tbody.children('.InputfieldTableRowTemplate').clone(true); 
		$row.find("input.hasDatepicker").removeClass('hasDatepicker').removeAttr('id').datepicker('destroy'); 
		$row.removeClass('InputfieldTableRowTemplate'); 

		$row.find(":input").each(function() {
			var $input = $(this);
			var name = $input.attr('name');
			name = name.replace(/_0_/, '_' + numRows + '_'); 
			$input.attr('name', name); 
			if($input.is('.InputfieldTableRowSort')) $input.val(numRows); 
		});

		$tbody.append($row);
		$table.show();
		return false; 
	}); 

	$("table.InputfieldTable").each(function() {
		InputfieldTableSortable($(this));
	});

	// row deletion
	$(document).on('click', '.InputfieldTableRowDeleteLink', function() {
		var $row = $(this).closest('tr');
		var $input = $(this).siblings('.InputfieldTableRowDelete'); 

		if($row.is('.InputfieldTableRowDeleted')) {
			// undelete
			$row.removeClass('InputfieldTableRowDeleted'); 
			$row.css('opacity', 1.0); 
			$input.val(0); 
			
		} else {
			// delete
			$row.addClass('InputfieldTableRowDeleted'); 
			$row.css('opacity', 0.3); 
			$input.val(1);
		}
	}); 
	
	
});
