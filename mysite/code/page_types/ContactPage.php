<?php

class ContactPage extends Page {
	static $icon = 'themes/wireframe/images/icons/contact';
		
	static $db = array(
		'Mailto' => 'Varchar(100)',
		'SubmitText' => 'HTMLText',
		'Address'=>'Text',
		'MapType' => "Enum('G_NORMAL_MAP, G_SATELLITE_MAP, G_HYBRID_MAP', 'G_NORMAL_MAP')",
		'ShowGoogleMap' => 'Boolean',
		'AddressBlock' => 'HTMLText'
	);
	
	public static $defaults = array(
		'AddressBlock' => '<p>My Business<br />7 Minerva St<br />Newtown<br />Wellington 6012<br />New Zealand</p>'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.GoogleMap', new CheckboxField ('ShowGoogleMap', 'Show Google Map'));
		$fields->addFieldToTab('Root.Content.GoogleMap',new DropdownField('MapType','Choose a map type', $this->dbObject('MapType')->enumValues()));
		$fields->addFieldToTab('Root.Content.	', new HTMLEditorField('AddressBlock','Address', 10));
		$fields->addFieldToTab('Root.Content.OnSubmission', new TextField('Mailto', 'Email submissions to'));
		$fields->addFieldToTab('Root.Content.OnSubmission', new HTMLEditorField('SubmitText', 'Text on Submission'));
		
		return $fields;
	}
}

class ContactPage_Controller extends Page_Controller {
	function ContactForm() {
		$Params = Director::urlParams();

		return new ContactForm($this, 'ContactForm');
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
		Requirements::javascript(JS_PATH . "/ContactPage.js");
	}
}