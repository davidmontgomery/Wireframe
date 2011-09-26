<?php

class BannerImage extends DataObject {
	static $db = array (
		'Heading' => 'Varchar(50)',
		'Caption' => 'HTMLText'
	);

	static $has_one = array (
		'MyBannerImage' => 'Image',
		'BelongToEventPage' => 'HomePage'
	);

	public function getCMSFields_forPopup() {
		return new FieldSet(
			new TextField('Heading'),
			new SimpleHTMLEditorField('Caption'),
			new FileIFrameField('MyBannerImage')
		);
	}
}