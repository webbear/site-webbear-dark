(function($){

	var privateMethods = {
		// Add  prefixes
		addPrefix: function($element) {
			var elementId = $element.attr('id');
			//var elementClass = $element.attr('class');

			if(typeof elementId === 'string' && '' !== elementId) {
				$element.attr('id', elementId.replace(/([A-Za-z0-9_.\-]+)/g, 'mm-$1'));
			}
			// if(typeof elementClass === 'string' && elementClass !=='mobileContainer' && '' !== elementClass) {
// 				$element.attr('class', elementClass.replace(/([A-Za-z0-9_.\-]+)/g, 'mobileMenu-$1'));
// 			}
			$element.removeAttr('style');
		},
		isInArray: function(string, myArray){
			for (var i =0; i < myArray.length; i++) {
				if (myArray[i] === string) {
					return true;
				} else {
					return false;
				}
			}

		}
	};

	$.fn.mobileMenu = function(params){
		var settings = $.extend({
			mobileElements: ".main-nav",
			mobileHeaderID: "mobile-header",
			mobileMenuID: "mobile-menu",
			hideSubMenu: true,
			renaming: true,
			append: true
		}, params);

		var $menu = '';
		var htmlContent ='';
		if (typeof settings.mobileElements === 'string') {
			var selectors = settings.mobileElements.split(',');
			//var menus = settings.mobileMenus.split(',');
			$.each(selectors, function(index, element) {

				var id='', cssClass='', content = $(element).html(), selector = element;

				if (selector.substr(0,1) === '#') {

					id = " id='mm-"+ selector.substr(1) +"'";
				}
				if (selector.substr(0,1) === '.') {
					cssClass = " mm-" + selector.substr(1);
				}

				if (settings.renaming) {
					var $content = $('<div />').html(content);

					$content.find('*').each(function(index, elem) {
						var $elem = $(elem);
						privateMethods.addPrefix($elem);
					});

					content = $content.html();
				}

				htmlContent += '<div'+id+' class="mm-container'+cssClass+'">' + content + '</div>';
			});
		}

		$menu = $('<div id="'+ settings.mobileMenuID +'" class="mobile-menu off-canvas" />').html(htmlContent);
		if (settings.hideSubMenu) {
			if ($menu.find('li.has-dropdown').length) {
				$menu.find('li.has-dropdown > ul').hide();
				$('<span class="open-close-button closed">+</span>').insertAfter($menu.find('li.parent > a'));
			}
		}

		// append or prepend menu

		if (settings.append) {
			this.append($menu);
		} else {
			this.prepend($menu);
		}


		// logic
		$('.open-close-button').click(function(){
			$(this).siblings('ul').slideToggle();
			$(this).parent('li').toggleClass('open');
			if ($(this).hasClass('closed')) {
				$(this).removeClass('closed').text('-');
			}
			else
			{
				$(this).addClass('closed').text('+');
			}
		});
	};


}(jQuery));