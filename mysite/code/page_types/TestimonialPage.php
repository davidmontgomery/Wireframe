<?php

class TestimonialPage extends Page {
	static $icon = 'themes/wireframe/images/icons/testimonial';
	
	static $db = array(
	);
	
	static $has_many = array(
		'Testimonials' => 'Testimonial'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$manager = new DataObjectManager(
		$this, // Controller
		'Testimonials', // Source name
		'Testimonial', // Source class
		array(
			'Testimonial' => 'Testimonial',
			'Name' => 'Name'
		), // Headings
		'getCMSFields_forPopup'
	);

		$fields->addFieldToTab('Root.Content.Testimonials', $manager);
		return $fields;
	}
}

class TestimonialPage_Controller extends Page_Controller {
}