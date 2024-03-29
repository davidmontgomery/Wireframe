<?php

class NewsPage extends Page {
	static $icon = 'themes/wireframe/images/icons/news';

	static $db = array(
		'Date' => 'Date',
		'Title' => 'Text'
	);

	static $has_one = array(
		'Photo' => 'Image'
	);

	static $has_many = array(
		'Downloads' => 'Download'
	);

	function getCMSFields() {
		$fields = parent::getCMSFields();

		$datefield = new Datefield('Date', 'Date');
		$datefield->setConfig('showcalendar', true);
		$datefield->setConfig('dateformat', 'dd-MM-YYYY');

		$fields->addFieldToTab('Root.Content.Main', $datefield, 'Content');
		$fields->addFieldToTab('Root.Content.Main', new TextField('Title'), 'Content');
		$fields->addFieldToTab('Root.Content.Images', new ImageField('Photo'));

		return $fields;
	}

	// Change the sort in the site tree to the date
	function onBeforeWrite() {
		if($this->ID) {
			$newsort =  date('Ymd', strtotime($this->Date));
			$newsort = 1-$newsort;
			$this->record['Sort'] = $newsort;
		}

		parent::onBeforeWrite();
	}
}

class NewsPage_Controller extends Page_Controller {

}