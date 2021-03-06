/*
*******************************************
mobile menu function
*******************************************

mobileMenu('.navClassToClone', 'prependToElement (usually 'body')', params);

params = {
	prefix: "mm-",
	containerClass: "mm-container",
	hiddenClass: "hidden",
	mobileMenuClass: "mobile-menu",
	mobileHeaderClass: "mobile-header",
	revealMobileMenuClass: "reveal-mobile-menu",
	toggleOnClass: "on",
	hideSubMenus: false,
	subMenuToggleButtonClass: "toggle"
}

*******************************************
style with css

.mobile-menu .reveal-mobile-menu:before {
  content: '\2630';
}

.mobile-menu .reveal-mobile-menu.on:before {
  content: '\2715';
}
.mobile-menu .mm-container {
  opacity: 1;
  transition: opacity 800ms ease;
  border-top: 1px solid white;
}

.mobile-menu .hidden {
  height: 0;
  overflow: hidden;
  opacity: 0;
}


*/

var mobileMenu = function(menu, element, params) {
	
	var _h = {
		addClass: function(el, className) {
			if (el.classList)
			  el.classList.add(className);
			else
			  el.className += ' ' + className;
		},
		extend: function(out) {
		  out = out || {};

		  for (var i = 1; i < arguments.length; i++) {
		    if (!arguments[i])
		      continue;

		    for (var key in arguments[i]) {
		      if (arguments[i].hasOwnProperty(key))
		        out[key] = arguments[i][key];
		    }
		  }

		  return out;
		},
		toggleClass: function(el, className) {

			if (el.classList) {
			  el.classList.toggle(className);
			} else {
			  var classes = el.className.split(' ');
			  var existingIndex = classes.indexOf(className);

			  if (existingIndex >= 0)
			    classes.splice(existingIndex, 1);
			  else
			    classes.push(className);

			  el.className = classes.join(' ');
			}
		},
 	 toggleMenu: function(buttonClass, element, classname) {
		 var toggleButton = document.querySelector(buttonClass);
		 toggleButton.addEventListener('click', function() {
			 _h.toggleClass(element, classname);
			 _h.toggleClass(toggleButton, options.toggleOnClass);
		 });
		},
		toggleSubMenu: function(element) {
			element.addEventListener('click',function() {
				_h.toggleClass(element.nextElementSibling, options.hiddenClass);
				_h.toggleClass(element, options.toggleOnClass);
			});
		},
		updateClassList: function(el, prefix) {
			var classList = el.classList;
			if (classList.length) {
				// edge does  not like forEach
				var classes = [],
				i=0, 
				len =classList.length;
				for (i; i<len; i++) {
					classes.push(classList[i]);
				}
				// here edge accept forEach!
				classes.forEach(function(v){
						classList.remove(v);
						classList.add(prefix + v);			
				});
			}			
			return el;
		},
		updateClasses: function(el) {
			var listElements = el.querySelectorAll("*");
			if (listElements.length) {
				var i= 0, len = listElements.length;
				// edge does  not like forEach
				for (i; i<len; i++) {
					_h.updateClassList(listElements[i], options.prefix);
				}
			}
			_h.updateClassList(el, options.prefix);
			return el;
		},
		hideSubmenu: function(el) {
			var subUls = el.querySelectorAll('li ul');
			subUls.forEach(function(v) {
				_h.addClass(v, options.hiddenClass);
				var toggleButton = "<span class='"+options.subMenuToggleButtonClass+"'></span>"
				v.insertAdjacentHTML('beforebegin', toggleButton);
				_h.toggleSubMenu(v.parentNode.querySelector('.' + options.subMenuToggleButtonClass));
			});
			return el;
		},
		rewriteIds: function(el) {
			var ids = el.querySelectorAll('[id]');
			if (el.id) {
				var elId = el.id;
				el.id = options.prefix + elId;
			}
			
			if (ids.length) {
				// edge does  not like forEach
				var i = 0, len = ids.length;
				for (i; i<len; i++) {
					var id = ids[i].getAttribute('id');
					ids[i].id = options.prefix + id;
					var tagName = ids[i].tagName.toLowerCase();
					if (tagName === "input" || tagName === "textarea") {
					 ids[i].parentNode.querySelector('[for='+ id + ']').setAttribute("for", options.prefix + id);
					}
				}
			}
			
			return el;
		}		
	};
	
	var options = _h.extend({
		prefix: "mm-",
		containerClass: "mm-container",
		hiddenClass: "hidden",
		mobileMenuClass: "mobile-menu",
		mobileHeaderClass: "mobile-header",
		revealMobileMenuClass: "reveal-mobile-menu",
		toggleOnClass: "on",
		hideSubMenus: false,
		subMenuToggleButtonClass: "toggle",
		wrapClass: "mm-wrap-"
	}, params);
	
	var contents = menu.split(',');
	
	var mmenu = document.createElement("div"),
	mcontainer = document.createElement("div");
	_h.addClass(mcontainer, options.containerClass);
	_h.addClass(mcontainer, options.hiddenClass);
	_h.addClass(mmenu, options.mobileMenuClass);
	mmenu.innerHTML = "<div class='"+options.mobileHeaderClass+"'><span class='"+options.revealMobileMenuClass+"'></span></div>";	
	
	contents.forEach(function(m, k) {
		if (document.querySelector(m.trim())) {
			var cloned = document.querySelector(m.trim()).cloneNode(true);
			
			// rewrite ids
			_h.rewriteIds(cloned);
			//rewrite classes
			cloned = _h.updateClasses(cloned);
		
			if (options.hideSubMenus) {
				cloned = _h.hideSubmenu(cloned);
			}
			
			var wrap = document.createElement("div");
			_h.addClass(wrap, options.wrapClass + (k+1));
			wrap.appendChild(cloned);
			mcontainer.appendChild(wrap);
		}
		
	});
	
	mmenu.appendChild(mcontainer);

	var elemToPrepend = document.querySelector(element);
		
		// prepend
		elemToPrepend.insertBefore(mmenu, elemToPrepend.firstChild);
		_h.toggleMenu('.' + options.revealMobileMenuClass, document.querySelector('.' + options.containerClass), options.hiddenClass);
	
};