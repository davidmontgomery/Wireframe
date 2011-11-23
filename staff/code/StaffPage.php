<?php

class StaffPage extends Page {
	
	static $db = array(
		'Position' => 'Varchar(50)',
		'Category' => "Enum('CEO, Managers, General')",
	);

	static $has_one = array(
		'StaffPhoto' => 'Image'
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Content.Main', new DropdownField('Category', 'Category', singleton('StaffPage')->dbObject('Category')->enumValues()), 'Content');
		$fields->addFieldToTab('Root.Content.Main', new TextField('Position'), 'Content');
		$fields->addFieldToTab('Root.Content.Main', new ImageField('StaffPhoto', 'Staff Photo'), 'Content');

		return $fields;
	}
}

class StaffPage_Controller extends Page_Controller {
}