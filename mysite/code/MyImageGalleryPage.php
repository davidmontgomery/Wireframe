<?php
class MyImageGalleryPage extends DataObjectDecorator {
		static $icon = 'themes/wireframe/images/icons/page';
	function extraStatics() {
		
	}
	

	
	public function updateCMSFields(FieldSet &$fields) {

		$fields->removeByName('Configuration');
		return $fields;
	}
}	