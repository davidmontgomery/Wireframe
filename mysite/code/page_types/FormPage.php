<?php

class FormPage extends Page {
	public static $db = array(
		
	);

	public static $has_one = array(
		
	);


}

class FormPage_Controller extends Page_Controller {
	function FormTemplate() {
		$Params = Director::urlParams();

		return new FormTemplate($this, 'FormTemplate');
	}
}