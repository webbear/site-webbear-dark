//@codekit-prepend "./vendors/mobileMenu.js"


mobileMenu('.top-nav', 'body');

$(document).ready(function() {
	/*$('<div class="mobile-header"><span class="menu-toggle" >&#9776;</span></div><div class="mm-container"></div>').prependTo('body');

	$('.mm-container').mobileMenu({mobileElements: '.top-nav'});

	var $menuToggle = $('.menu-toggle');

	$('.mm-container').hide();
	$menuToggle.addClass('closed');
	$menuToggle.click(function(){
		$('.mm-container').fadeToggle();
		if ($(this).hasClass('closed')) {
			$(this).html('&times;').removeClass('closed');
		} else {
			$(this).html('&#9776;').addClass('closed');
		}

	});*/

  $('a[data-rel^=lightcase]').lightcase( {
    swipe: true
  });
});
