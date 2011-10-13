<?php

class Testimonial extends DataObject {
	static $db = array(
		'Testimonial' => 'HTMLText',
		'Name' => 'Text',
		'Position' => 'Varchar(25)'
	);
	
	static $has_one = array(
		'TestimonialPage' => 'TestimonialPage'
	);
	
	function getCMSFields() {
		$fields = new FieldSet(
			new TextField('Name', 'Name'),
			new TextField('Position', 'Position'),
			new TextareaField('Testimonial', 'Testimonial')
		);
		
		return $fields;
	}
}