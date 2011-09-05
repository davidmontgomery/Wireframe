(function($) {
		
	$(document).ready(function() {
		
		// Accordion
		$('.accordion').accordion({
			speed: 500
		});
		
		// Colourbox
		$(".modal").colorbox({
			transition: "elastic", // elastic, fade, none
			width: "500px",
			inline: true,
			href: "#modal1"
		});
		
		// Modalbox
		
		
		$('.addModal').click(function() {
			$('body').append('<div class="modal_overlay"></div>');
			
			$('.modal_overlay').fadeIn(500);
			
				$('.modal_container').fadeIn(500);
				$('.modal_container').append('<a class="modal_close">Close</a>');
			
			$('.modal_overlay, .modal_close').click(function() {
				
				$('.modal_container').fadeOut(500, function() {
					$('.modal_overlay').fadeOut(500, function () {
						$(this).remove();
						$('.modal_close').remove()
					});
					
				});
			});
			
			
		
		
		});
		
		
		// PrettyPhoto
		$("a[rel^='prettyPhoto']").prettyPhoto({
			animation_speed: 'fast', /* fast/slow/normal */
			slideshow: false, /* false OR interval time in ms */
			autoplay_slideshow: false, /* true/false */
			opacity: 0.80, /* Value between 0 and 1 */
			show_title: false, /* true/false */
			allow_resize: true, /* Resize the photos bigger than viewport. true/false */
			default_width: 500,
			default_height: 344,
			counter_separator_label: '/', /* The separator for the gallery counter 1 "of" 2 */
			theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */
			hideflash: false, /* Hides all the flash object on a page, set to TRUE if flash appears over prettyPhoto */
			wmode: 'opaque', /* Set the flash wmode attribute */
			autoplay: true, /* Automatically start videos: True/False */
			modal: false, /* If set to true, only the close button will close the window */
			overlay_gallery: true, /* If set to true, a gallery will overlay the fullscreen image on mouse over */
			keyboard_shortcuts: true, /* Set to false if you open forms inside prettyPhoto */
			changepicturecallback: function(){}, /* Called everytime an item is shown/changed */
			callback: function(){} /* Called when prettyPhoto is closed */
		});
	})

})(jQuery);