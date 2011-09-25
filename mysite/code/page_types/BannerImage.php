<?php

class BannerImage extends DataObject {
	static $db = array (
		'Caption' => 'Varchar(50)'
	);

	static $has_one = array (
		'MyBannerImage' => 'Image',
		'BelongToEventPage' => 'HomePage'
	);

	public function getCMSFields_forPopup() {
		return new FieldSet(
			new TextField('Caption', 'Caption'),
			new FileIFrameField('MyBannerImage')
		);
	}
}