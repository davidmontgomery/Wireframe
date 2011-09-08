(function($) {
	$(document).ready(function() {
		
		// Cycle
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
		$('#various1').attr('href', '#inline1'); // need this for inline box to work with SS
		
		$('#various1').fancybox({
			'padding' : 20,
			'margin' : 40,
			'opacity' : false,
			'modal' : false,
			'cyclic' : false,
			'scrolling' : 'auto', // 'auto', 'yes' or 'no'
			'width' : 560,
			'height' : 340,
			'autoScale' : true,
			'autoDimensions' : false,
			'centerOnScroll' : true,
			'ajax' : {},
			'swf' : { wmode: 'transparent' },
			'hideOnOverlayClick' : true,
			'hideOnContentClick' : false,
			'overlayShow' : true,
			'overlayOpacity' : 0.8,
			'overlayColor' : '#000',
			'titleShow' : true,
			'titlePosition' : 'inside', // 'float', 'outside', 'inside' or 'over'
			'titleFormat' : null,
			'titleFromAlt' : false,
			'transitionIn' : 'fade', // 'elastic', 'fade' or 'none'
			'transitionOut' : 'fade', // 'elastic', 'fade' or 'none'
			'speedIn' : 300,
			'speedOut' : 300,
			'changeSpeed' : 300,
			'changeFade' : 'fast',
			'easingIn' : 'swing',
			'easingOut' : 'swing',
			'showCloseButton' : true,
			'showNavArrows' : true,
			'enableEscapeButton' : true,
			'enableKeyboardNav' : true,
			onStart : function(){},
			onCancel : function(){},
			onComplete : function(){},
			onCleanup : function(){},
			onClosed : function(){},
			onError : function(){}
		});
		
	});
})(jQuery);