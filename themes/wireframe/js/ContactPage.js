(function($) {
	$(document).ready(function() {

		$("#ContactForm_ContactForm").validate({
			// debug: true,
			// highlight adds a class of errorClass on the field div
			highlight: function(element, errorClass, validClass) {
				$(element).addClass(errorClass).removeClass(validClass);
				$(element.form).find("label[for=" + element.id + "]").closest(".field").addClass(errorClass);
		  },
			unhighlight: function(element, errorClass, validClass) {
				$(element).removeClass(errorClass).addClass(validClass);
				$(element.form).find("label[for=" + element.id + "]").closest(".field").removeClass(errorClass);
		  },
			errorElement: "span",
			errorClass: "error",
			validClass: "success",
			errorContainer: "#errorBox",
			errorLabelContainer: "#errorBox ul",
			wrapper: "li",
			/*
			success: function (label) {
				label.addClass("valid").text("Ok!");
			},
			*/
			/*
			submitHandler: function() {
				alert("Submitted!");
			},
			*/
			rules: {
				Name: {
					required: true,
					minlength: 2
				},
				Email: {
					required: true,
					email: true
				},
				Message: {
					required: true
				}
			},
			messages: {
				Name: {
					required: "The name is required (Custom)",
					minlength: jQuery.format("At least {0} characters required! (Custom)")
				},
				Email: {
					required: "The email is required (Custom)",
					email: "Please provide a valid email address (Custom)"
				},
				Message: {
					required: "The message is required (Custom)"
				}
			}
		});

	})
})(jQuery);