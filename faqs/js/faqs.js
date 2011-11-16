/* --------------------------------------------------------
 * Faqs: 
 * -------------------------------------------------------- */
$('.faqs p.question').click(function(e) {
	var show = $(this).next('div');
	e.preventDefault();
	
	if (show.is(':visible')) {
		show.slideUp(500);
	} else {
		show.slideDown(500);
	}
});