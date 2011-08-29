<?php

class ContactPage extends Page {
	static $db = array(
		'Mailto' => 'Varchar(100)',
		'SubmitText' => 'HTMLText'
	);
    
	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab("Root.Content.OnSubmission", new TextField('Mailto', 'Email submissions to'));
		$fields->addFieldToTab("Root.Content.OnSubmission", new HTMLEditorField('SubmitText', 'Text on Submission'));
		return $fields;	
	}
}
 
class ContactPage_Controller extends Page_Controller {
	function ContactForm() {
		$Params = Director::urlParams();

		return new ContactForm($this, 'ContactForm');
	}
    
	function SendContactForm($data) {
		//Set data
		$From = $data['Email'];
		$To = $this->Mailto;
		$Subject = EMAIL_SUBJECT_LINE;
		$email = new Email($From, $To, $Subject);

		//set template
		$email->setTemplate('ContactEmail');

		//populate template
		$email->populateTemplate($data);

		//send mail
		$email->send();

		//return to submitted message
		Director::redirect(Director::baseURL(). $this->URLSegment . "/?success=1");
	}
    
	public function Success() {
		return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
	}

	function init() {
		parent::init();

		//custom JQuery validation
		Validator::set_javascript_validation_handler('none');
		Requirements::javascript(JS_PATH .  "/jquery.validate.js");
		Requirements::javascript(JS_PATH . "/ContactPage.js");
	}
}