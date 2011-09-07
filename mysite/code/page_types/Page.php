<?php

class Page extends SiteTree {
	public static $db = array(
		'IntroSnippet' => 'HTMLText',
		'DisplayHomepage' => 'Boolean'
	);

	public static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.Main', new CheckboxField ('DisplayHomepage', 'Display on Homepage'), 'Content');
		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('IntroSnippet', 'Homepage Snippet'), 'Content');
		return $fields;	
	}
}

class Page_Controller extends ContentController {
	
	protected function CacheSegment() {
		return $_SERVER["REQUEST_URI"];
	}
	
	protected function IsLive() {
		return Director::isLive();
	}
	
	public function init() {
		parent::init();

		// Favicon + RSS
		Requirements::insertHeadTags('<link rel="shortcut icon" href="/favicon.ico?nocache=1" />');
		Requirements::insertHeadTags('<link rel="apple-touch-icon" href="/apple-touch-icon.png" />');
		Requirements::insertHeadTags('<link rel="alternate" type="application/rss+xml" href="/news/rss" title="My Latest News" />');
		
		// IE6 Png fix
		Requirements::insertHeadTags('
			<!--[if IE 6]>
				<link rel="stylesheet" type="text/css" href="' . CSS_PATH  . '/ie6.css" />
				<script src="' . JS_PATH . '/DD_belatedPNG.js"></script>
				<script>DD_belatedPNG.fix(".pngfix");</script>
			<![endif]-->
		');

		// CSS
		$css = array(
			CSS_PATH . '/reset.css',
			CSS_PATH . '/typography.css',
			CSS_PATH . '/editor.css',
			CSS_PATH . '/variables.css',
			CSS_PATH . '/layout.css',
			CSS_PATH . '/form.css',
			CSS_PATH . '/prettyPhoto.css',
			CSS_PATH . '/modalbox.css'
		);
		
		// JS
		$js = array(
			JS_PATH . '/jquery-min.js',
			JS_PATH . '/prettyPhoto.js',
			JS_PATH . '/placeholder.js',
			JS_PATH . '/accordion.js',
			JS_PATH . '/jquery.colorbox.js',
			JS_PATH . '/jquery.cycle.js',
			JS_PATH . '/general.js'
		);
		
		// Modernizr - to be put in the document head section
		Requirements::insertHeadTags('<script src="' . JS_PATH . '/modernizr-1.7.min.js"></script>');
		
		// Requirements
		foreach ($css as $c) {
			Requirements::css($c);
		}

		foreach ($js as $j) {
			Requirements::javascript($j);
		}
		
		// Combine: To test set to 'test' in _config
		Requirements::set_combined_files_folder(COMBINE_PATH);
		Requirements::combine_files('combined.css', $css);
		Requirements::combine_files('combined.js', $js);
		Requirements::process_combined_files();
	}
	
	// Functions
	function GetLatestNews($num=3) {
		$news = DataObject::get_one("ArticleHolder");
		return DataObject::get("ArticlePage", "ParentID = $news->ID", "Date DESC", "", $num);
	}
	
	function DisplayHomepage() {
		return DataObject::get("Page", "DisplayHomepage = 1", "RAND()", null, "");
	}
	

}