<?php

class FaqPage extends Page {
	static $icon = 'themes/wireframe/images/icons/faq';
	
	static $db = array(
	);
	
	static $has_many = array(
		'Faqs' => 'Faq'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$manager = new DataObjectManager(
		$this, // Controller
		'Faqs', // Source name
		'Faq', // Source class
		array(
			'Question' => 'Question',
			'Answer' => 'Answer'
		), // Headings
		'getCMSFields_forPopup'
	);
	
		$fields->addFieldToTab('Root.Content.FAQs', $manager);
		return $fields;
	}
}

class FaqPage_Controller extends Page_Controller {
	function init() {
		parent::init();
		Requirements::javascript('faqs/js/faqs.js');
	}
}