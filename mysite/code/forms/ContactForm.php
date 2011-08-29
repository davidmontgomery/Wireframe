<?php

class ContactForm extends Form {
	
	function __construct($controller, $name) {

		$fields = new FieldSet(
			new TextField('Name'),
			new EmailField('Email'),
			new TextareaField('Message'),
			new CheckboxField('TermsConditions'),
			new OptionsetField(
				'Sex',
				'',
				array(
					'Male' => 'Male',
					'Female' => 'Female'
				)
			),
			new DropdownField(
				'Title',
				'',
				array(
					'Mr' => 'Mr',
					'Mrs' => 'Mrs',
					'Ms' => 'Ms',
					'Miss' => 'Miss'
				)
			)
		);

		$actions = new FieldSet(
			new FormAction('SendContactForm', 'Send')
		);

		//return new Form($this, $name, $fields, $actions, $validator);
		parent::__construct($controller, $name, $fields, $actions);
	}
	
	function forTemplate() {
		return $this->renderWith(array(
			$this->class,
			'ContactForm'
		));
	}

}