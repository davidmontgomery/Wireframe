<?php

class ArticleHolder extends Page {
	static $db = array(
	);

	static $has_one = array(
	);

	static $allowed_children = array('ArticlePage');
}
 
class ArticleHolder_Controller extends Page_Controller {

	function OrderedChildren() {
		return DataObject::get('ArticlePage', 'ParentID = ' . $this->ID, 'Date DESC');
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
	function ArticlePaginate() {
		$numArticles = 2; // Number of articles per page
        
		if(!isset($_GET['start']) || !is_numeric($_GET['start']) || (int)$_GET['start'] < 1) $_GET['start'] = 0;
		$SQL_start = (int)$_GET['start'];
		$doSet = DataObject::get(
			$callerClass = "ArticlePage",
			$filter = "`ParentID` = '".$this->ID."'",
			$sort = "Date DESC",
			$join = "",
			$limit = "{$SQL_start}, $numArticles"
		);
		
		return $doSet ? $doSet : false;
	}
	
}