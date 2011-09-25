<?php
class MyImageGalleryPage extends DataObjectDecorator{
	function extraStatics() {
		
	}
	

	
	public function updateCMSFields(FieldSet &$fields) {

		$fields->removeByName('Configuration');
		return $fields;
	}
}	