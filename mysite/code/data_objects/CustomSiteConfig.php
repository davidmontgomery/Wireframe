<?php

class CustomSiteConfig extends DataObjectDecorator {
	
	function extraStatics() {
		return array(
			'db' => array(
				'Phone' => 'Varchar(64)',
				'Address' => 'Varchar(64)',
				'Email' => 'Varchar(64)',
				'OpeningHours' => 'HTMLText'
			)
		);
	}

	public function updateCMSFields(FieldSet &$fields) {
		$fields->addFieldToTab( 'Root.Main', new TextField('Phone', 'Phone number'));
		$fields->addFieldToTab('Root.Main', new TextField('Address'));
		$fields->addFieldToTab('Root.Main', new TextField('Email', 'Email contact address'));
		$fields->addFieldToTab( 'Root.Main', new HTMLEditorField('OpeningHours'));
	}

}