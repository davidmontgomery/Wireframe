/* --------------------------------------------------------
 * Faqs:
 * -------------------------------------------------------- */
$('.faqs p.question').click(function(event) {
	event.preventDefault();
	
	var $show = $(this).next('div'),
			$hide = $(this).find('.faqs_show'),
			el = $(this);
	
	if ($show.is(':visible')) {
		$show.slideUp(500);
		$hide.text('show');
		el.removeClass('open');
	} else {
		$show.slideDown(500);
		$hide.text('hide');
		el.addClass('open');
	}
});