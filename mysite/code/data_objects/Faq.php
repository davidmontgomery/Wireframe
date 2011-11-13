<?php

class Faq extends DataObject {
	static $db = array(
		'Question' => 'HTMLText',
		'Answer' => 'HTMLText'
	);

	static $has_one = array(
		'FaqPage' => 'FaqPage'
	);

	function getCMSFields() {
		$fields = new FieldSet(
			new SimpleHTMLEditorField('Question', 'Question'),
			new SimpleHTMLEditorField('Answer', 'Answer')
		);

		return $fields;
	}
}