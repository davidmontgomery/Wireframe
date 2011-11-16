<?php

class NewsHolder extends Page {
	static $icon = 'themes/wireframe/images/icons/news';

	static $db = array(
	);

	static $has_one = array(
	);

	static $allowed_children = array('NewsPage');
}

class NewsHolder_Controller extends Page_Controller {

	function OrderedChildren() {
		return DataObject::get('NewsPage', 'ParentID = ' . $this->ID, 'Date DESC');
	}

	// RSS
	function init() {
		RSSFeed::linkToFeed($this->Link() . "rss");
		parent::init();
	}

	function rss() {
		$rss = new RSSFeed($this->Children(), $this->Link(), "My latest news");
		$rss->outputToBrowser();
	}

	// Paginate News Article Holder
	function NewsPaginate() {
		$numNews = 1; // Number of articles per page
		
		if(!isset($_GET['start']) || !is_numeric($_GET['start']) || (int)$_GET['start'] < 1) $_GET['start'] = 0;
		$SQL_start = (int)$_GET['start'];
		$doSet = DataObject::get(
			$callerClass = "NewsPage",
			$filter = "`ParentID` = '".$this->ID."'",
			$sort = "Date DESC",
			$join = "",
			$limit = "{$SQL_start}, $numNews"
		);

		return $doSet ? $doSet : false;
	}
}