(function($) {
	$(document).ready(function() {
		
		var testPlaceholder = function() {
			var i = document.createElement('input');
			return 'placeholder' in i;
		}

		if (!testPlaceholder()) {
			$("input[placeholder]").each(function() {
				var input = $(this),
				placeholder = input.attr("placeholder");
				input.removeAttr("placeholder");
				if (!input.val()) {
					input.val(placeholder);
				}
				
				input.bind("focus blur", function(e) {
					if (e.type === "focus" && input.val() === placeholder) {
						input.val("");
					} else {
						if (!input.val()) {
							input.val(placeholder);
						}
					}
				});
			});
		}
		
	})
})(jQuery);