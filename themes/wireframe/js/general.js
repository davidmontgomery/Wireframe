(function($) {
	$(document).ready(function() {
		
		// JQuery Cycle
		$('.slideshow').before('<div class="banner_nav clearfix">').cycle({
			fx: 'scrollLeft',
			speed: 500,
			sync: 1,
			pager: '.banner_nav',
			timeout: 5000,
			pause: 1
		});
		
		// Accordion
		$('.accordion').accordion({
			speed: 500
		});
		
		// Fancybox
		$("#various1").attr("href", "#inline1"); // need this for inline box to work with SS	
		
		$('#various1').fancybox({
			'width' : 200,
			'height' : 200,
			'padding' : 20,
			'titlePosition' : 'inside',
			'transitionIn' : 'elastic',
			'transitionOut':'elastic',
			'speedIn' : 400,
			'speedOut' : 300,
			'opacity' : true,
			'autoDimensions' : false,
			'centerOnScroll' : true
		});
		
	});
})(jQuery);