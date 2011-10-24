<?php

class FormPage extends Page {
	public static $db = array(
		
	);

	public static $has_one = array(
		
	);


}

class FormPage_Controller extends Page_Controller {
	function FormTemplate() {
		$Params = Director::urlParams();

		return new FormTemplate($this, 'FormTemplate');
	}
    
	function SendContactForm($data) {
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
		Requirements::javascript(JS_PATH .  "/jquery.validate.js");
		Requirements::javascript(JS_PATH . "/FormTemplatePage.js");
	}
}