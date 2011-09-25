<?php

class Testimonial extends DataObject {
	static $db = array(
		'Testimonial' => 'HTMLText',
		'Name' => 'Text'
	);
	
	static $has_one = array(
		'TestimonialPage' => 'TestimonialPage'
	);
	
	function getCMSFields() {
		$fields = new FieldSet(
			new TextField('Name', 'Name'),
			new SimpleHTMLEditorField('Testimonial', 'Testimonial')
		);
		
		return $fields;
	}
}