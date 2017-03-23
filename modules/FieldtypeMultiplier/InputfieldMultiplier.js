/**
 * ProcessWire Multiplier Inputfield
 *
 * Takes any single-value Fieldtype and turns it into a multiple-value fieldtype. 
 *
 * Part of the ProFields package
 * Please do not distribute. 
 * 
 * Copyright 2014 by Ryan Cramer
 *
 * http://processwire.com
 *
 */

function InputfieldMultiplierSortable($list) {
	$list.sortable({
		axis: 'y',
		stop: function(ui, event) {
			var sort = '';
			$(this).children().each(function() {
				sort += $(this).attr('data-n') + ',';
			}); 
			// console.log(sort); 
			$(this).parents('.InputfieldMultiplier').find('.InputfieldMultiplierSort').val(sort); 
		}
	}); 
}

$(document).ready(function() {

	InputfieldMultiplierSortable($(".InputfieldMultiplierSortable > tbody")); 

	$(".InputfieldMultiplierAdd").click(function() {
		var $items = $(this).parents('.InputfieldMultiplier').find(".InputfieldMultiplierInactive");
		var qty = $items.size();
		if(qty > 0) {
			var $item = $items.eq(0);
			$item.removeClass('InputfieldMultiplierInactive').show();
			if($item.find(".InputfieldMultiplierSortHandle").size() > 0) {
				InputfieldMultiplierSortable($item.parents(".InputfieldMultiplierSortable").children('tbody')); 
			}
		} 
		if(qty <= 1) $(this).hide();
		return false; 
	});

	$(".InputfieldMultiplierTrash").click(function() {
		var $item = $(this).parents(".InputfieldMultiplierItem"); 
		if($item.hasClass('InputfieldMultiplierItemTrashed')) {
			$item.css('opacity', 1.0).removeClass('InputfieldMultiplierItemTrashed');
		} else {
			$item.css('opacity', 0.3).addClass('InputfieldMultiplierItemTrashed');
		}

		var trashCSV = '';
		$item.parent().children(".InputfieldMultiplierItem").each(function() {
			if($(this).hasClass('InputfieldMultiplierItemTrashed')) {
				trashCSV += $(this).attr('data-n') + ',';
			}
		}); 
		var $trash = $(this).parents(".InputfieldMultiplier").find(".InputfieldMultiplierTrashed"); 
		$trash.val(trashCSV); 
		// console.log(trashCSV); 
		
		return false;
	});
}); 
