(function($) {
	$.fn.accordion = function(options) {
		var defaults = {
			speed: 10
		}
		
		var options = $.extend(defaults, options);
		var el = this;
		
		el.next('.body').slideUp(options.speed);
		el.find('.clickable:first').next().show();
		
		el.find('.clickable').click(function(event) {
			event.preventDefault();
			$element = $(this);
			$element.closest('li').siblings().removeClass('active');
			
			if (!$element.closest('li').hasClass('active')) {
				$('.body').slideUp(options.speed);
				$element.next().slideDown(options.speed);
				
				$element.closest('li').addClass('active');
			}
		});
	};
})(jQuery);