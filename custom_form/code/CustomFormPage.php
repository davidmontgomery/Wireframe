<?php

class CustomFormPage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	);
}

class CustomFormPage_Controller extends Page_Controller {
	function CustomFormTemplate() {
		$Params = Director::urlParams();

		return new CustomFormTemplate($this, 'CustomFormTemplate');
	}

	function SendCustomFormPage($data) {
		// Set data
		$From = $data['Email'];
		$To = $this->Mailto;
		$Subject = EMAIL_SUBJECT_LINE;
		$email = new Email($From, $To, $Subject);

		// Set template
		$email->setTemplate('ContactEmail');

		// Populate template
		$email->populateTemplate($data);

		// Send mail
		$email->send();

		// Return to submitted message
		Director::redirect(Director::baseURL(). $this->URLSegment . "/?success=1");
	}

	public function Success() {
		return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
	}

	function init() {
		parent::init();

		// Custom JQuery validation
		Validator::set_javascript_validation_handler('none');
		Requirements::javascript("custom_form/js/jquery.validate.js");
		Requirements::javascript("custom_form/js/CustomFormTemplatePage.js");
	}
}