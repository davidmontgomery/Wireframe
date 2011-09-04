(function($) {
	$.fn.accordion = function() {
		this.next('.body').slideUp(1000);
		this.find('.clickable:first').next().show();
		
		this.find('.clickable').click(function(event) {
			$(this).closest('li').siblings().removeClass('active');
			
			if ($(this).next().is(':hidden')) {
				$('.body').slideUp(1000);
				$(this).next().slideDown(1000);
				$(this).closest('li').addClass('active');
			}
			event.preventDefault();
		});
	};
})(jQuery);