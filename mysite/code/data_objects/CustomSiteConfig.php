<?php

class CustomSiteConfig extends DataObjectDecorator {
	
	function extraStatics() {
		return array(
			'db' => array(
				'Phone' => 'Varchar(64)',
				'Address' => 'Varchar(64)',
				'Email' => 'Varchar(64)',
				'GlobalKeywords' => 'Text',
				'GlobalDescription' => 'Text'
			),
			'defaults' => array(
				'Phone' => '021 123 1234',
				'Address' => '7 Minerva St, Newtown, Wellington, New Zealand',
				'Email' => 'name@mysite.co.nz',
				'GlobalKeywords' => 'Lists, of, global, keywords, here',
				'GlobalDescription' => 'Global site description here.'
			) 
		);
	}

	public function updateCMSFields(FieldSet &$fields) {
		$fields->addFieldToTab( 'Root.Main', new TextField('Phone', 'Phone number: (e.g. 021 123 1234)'));
		$fields->addFieldToTab('Root.Main', new TextField('Address', 'Address: (e.g. 7 Minerva St, Newtown, Wellington, New Zealand)'));
		$fields->addFieldToTab('Root.Main', new TextField('Email', 'Email address: (e.g. name@mysite.co.nz)'));
		$fields->addFieldToTab('Root.MetaTags', new TextareaField('GlobalKeywords', 'Global Keywords'));
		$fields->addFieldToTab('Root.MetaTags', new TextareaField('GlobalDescription', 'Global Description'));
	}
}