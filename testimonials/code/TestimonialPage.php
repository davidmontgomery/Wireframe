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
			'Name' => 'Name',
			'Position' => 'Position',
			'Testimonial' => 'Testimonial'
		), // Headings
			'getCMSFields_forPopup'
		);

		$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		$fields->addFieldToTab('Root.Content.Main', $manager);
		return $fields;
	}
}

class TestimonialPage_Controller extends Page_Controller {

	function init() {
		parent::init();
		Requirements::css('testimonials/css/testimonials.css');
	}
}