<?php

class HomePage extends Page {
	static $icon = 'themes/wireframe/images/tree-icons/home';
	
	static $db = array(
	);

	static $has_one = array(
	);
	
	static $has_many = array(
		'BannerImages' => 'BannerImage'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$manager = new ImageDataObjectManager(
		$this, // Controller
		'BannerImages', // Source name
		'BannerImage', // Source class
		'MyBannerImage',
		array(
			'Caption' => 'Caption',
			'Heading' => 'Heading'
		), // Headings
		'getCMSFields_forPopup'
		);
		
		$fields->addFieldToTab('Root.Content.BannerImages', $manager);
		return $fields;
	}
}

class HomePage_Controller extends Page_Controller {

}