(function($) {
	$(document).ready(function() {
		
		// http:docs.jquery.com/Plugins/Validation/validate
		$("#FormTemplate_FormTemplate").validate({
			//debug: true,
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
			errorPlacement: function(label, elem) {
					var test = label.text();
			    elem.closest("fieldset").find(".messages").append(test);
			  },
			wrapper: "li",
			/* Adds to success message to the top list
			success: function (label) {
				label.addClass("valid").text("Ok!");
			},
	
			/*
			submitHandler: function() {
				alert("Submitted!");
			},
			*/
			rules: {
				Title: {
					required: true,
				},
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
				},
				TermsConditions: {
					required: true
				},
				Sex: {
					required: true
				},
				'Topics[]': {
					required: true
				}
			},
			messages: {
				Title: {
					required: "You must select one option"
				},
				Name: {
					required: "The name is required",
					minlength: jQuery.format("At least {0} characters required!")
				},
				Email: {
					required: "The email is required",
					email: "Please provide a valid email address"
				},
				Message: {
					required: "The message is required"
				},
				TermsConditions: {
					required: "You must read the terms and conditions"
				},
				Sex: {
					required: "You must select at least one option"
				}
			}
		});

	})
})(jQuery);


