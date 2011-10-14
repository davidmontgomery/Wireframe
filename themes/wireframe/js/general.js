(function($) {
	$(document).ready(function() {
		
		// Show / hide
		$(".faqs h3").click(function(e) {
				var show = $(this).next('div');
				e.preventDefault();
				if (show.is(":visible")) {
					show.slideUp(500);
				} else {
					show.slideDown(500);
				}
		});
		
		var config = {
			interval: 200,
			over: tileOver,
			timeout: 500,
			out: tileOut
		};
		
		$(".tile").hoverIntent(config);
		
		// Panel Slide
		function tileOver() {
			var $caption = $(this).find('.caption');
			var $body = $(this).find('.body');
			var height = $body.height();
			
			$body.css({
				'height' : 0,
				'display' : 'block'
			}).animate({
				'height' : '+' + height + 'px'
			}, 250);
			
			$caption.animate({
				'margin-top' : '-' + height + 'px'
			}, 250);
		}
		
		function tileOut() {
				var $caption = $(this).find('.caption');
				var $body = $(this).find('.body');
				var height = $body.height();

				$body.animate({
					'height' : 0
				}, 250, function () {
					$body.css({
						'display' : 'none',
						'height' : height
					});
				});

				$caption.animate({
					'margin-top' : 0
				}, 250);
		}
		
		// Tooltip
		$('a.tooltip').hover(
			function() {
				var $el = $(this);
				var $pos = $el.offset();
				var $xPos = $pos.left;
				var $yPos = $pos.top - 40;
				
				$('body').append('<div class="tooltip_container"></div>');
					
				var $title = $el.attr('title');
				$el.attr('title', '');
			
				$('body').find('.tooltip_container').html($title).fadeIn(250).css({
					'left' : $xPos,
					'top' : $yPos
				});
			},
			function() {
				var $el = $(this);
				var $newTitle = $('.tooltip_container').text();
				$el.attr('title', $newTitle);
				$('body').find('.tooltip_container').fadeOut(250, function() {
					$(this).remove();
				});
			}
		);
		
		// External link
		$("a[href*='http://']:not([href*='" + location.hostname+"']),[href*='https://']:not([href*='" + location.hostname + "'])")
		.addClass('external_link')
		.attr('target','_blank')
		.attr('title','Opens new window');
		
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
			speed : 500
		});
		
		// Fancybox
		$('#various1').attr('href', '#inline1'); // need this for inline box to work with SS
		
		$('#various1, #example5, a[rel=fancybox]').fancybox({
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
			'titleFormat' : function(title, currentArray, currentIndex, currentOpts) {
				return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
			},
			'titleFromAlt' : false,
			'transitionIn' : 'elastic', // 'elastic', 'fade' or 'none'
			'transitionOut' : 'elastic', // 'elastic', 'fade' or 'none'
			'speedIn' : 600,
			'speedOut' : 600,
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