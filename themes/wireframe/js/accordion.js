(function($) {
	$.fn.accordion = function() {
		$('.clickable', this).click(function(event) {
			$('.content:visible').slideUp(500);
			$(this).next().slideDown(500);
			event.preventDefault();
		});
	};
})(jQuery);