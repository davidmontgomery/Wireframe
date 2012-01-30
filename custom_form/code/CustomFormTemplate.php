<?php

class CustomFormTemplate extends Form {
	
	function __construct($controller, $name) {
		
		$fields = new FieldSet(
			new DropdownField(
				'Dropdownfield',
				'',
				array(
					'' => 'Select',
					'ItemOne' => 'Item One',
					'ItemTwo' => 'Item Two',
					'ItemThree' => 'Item Three'
				)
			),
			new TextField('Textfield'),
			new EmailField('Emailfield'),
			new TextareaField('Textareafield'),
			new CheckboxField('Checkboxfield'),
			new CustomCheckboxSetField(
				'OneColumn',
				'',
				array(
					'1' => 'Item one',
					'2' => 'Item two',
					'3' => 'Item three'
				),
				'0'
			),
			new CustomCheckboxSetField(
				'TwoColumn',
				'',
				array(
					'1' => 'Item one',
					'2' => 'Item two',
					'3' => 'Item three',
					'4' => 'Item four',
					'5' => 'Item three',
					'6' => 'Item four'
				),
				'0'
			),
			new CustomCheckboxSetField(
				'ThreeColumn',
				'',
				array(
					'1' => 'Item one',
					'2' => 'Item two',
					'3' => 'Item three',
					'4' => 'Item four',
					'5' => 'Item five',
					'6' => 'Item six'
				),
				'0'
			),
			new OptionsetField(
				'Sex',
				'',
				array(
					'Male' => 'Male',
					'Female' => 'Female'
				)
			)
		);
		
		$actions = new FieldSet(
			new FormAction('SendCustomForPage', 'Send')
		);
	
		//return new Form($this, $name, $fields, $actions, $validator);
		parent::__construct($controller, $name, $fields, $actions);
	}
	
	function forTemplate() {
		return $this->renderWith(array(
			$this->class,
			'CustomFormTemplate'
		));
	}
}