<?php

class Page extends SiteTree {
	public static $db = array(
		'IntroSnippet' => 'HTMLText',
		'ShowInFooterMenu' => 'Boolean',
		'ShowInTopMenu' => 'Boolean',
		'ShowInMainMenu' => 'Boolean'
	);
	
	static $has_one = array(
		'BannerImage' => 'Image'
	);
	
	// Use MyImageGalleryPage instead
	static $hide_ancestor = 'ImageGalleryPage';
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.Banner', new ImageField('BannerImage', 'Banner'));
		$fields->addFieldToTab('Root.Behaviour', new CheckboxField('ShowInTopMenu', 'Show in top menu?'));
		$fields->addFieldToTab('Root.Behaviour', new CheckboxField('ShowInMainMenu', 'Show in main menu?'));
		$fields->addFieldToTab('Root.Behaviour', new CheckboxField('ShowInFooterMenu', 'Show in footer menu?'));
		return $fields;
	}
	
	// Recursive banner images
	function RecursiveBannerImage() {
		$page = $this;
		$banner = $this->BannerImage();
		while(!$banner->ID && $page->ParentID != 0) {
			$page = $page->Parent();
			$banner = $page->BannerImage();
		}
		return $banner;
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
			CSS_PATH . '/variables.css',
			CSS_PATH . '/css3.css',
			CSS_PATH . '/editor.css',
			CSS_PATH . '/layout.css',
			CSS_PATH . '/form.css',
			CSS_PATH . '/jquery.fancybox-1.3.4.css',
			CSS_PATH . '/print.css'
		);
		
		// JS
		$js = array(
			JS_PATH . '/jquery-min.js',
			JS_PATH . '/prettyPhoto.js',
			JS_PATH . '/placeholder.js',
			JS_PATH . '/accordion.js',
			JS_PATH . '/jquery.cycle.js',
			JS_PATH . '/jquery.fancybox-1.3.4.pack.js',
			JS_PATH . '/hover-intent.js',
			JS_PATH . '/jquery.moreless.1.0.js',
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
	}
	
	// Latest News
	function LatestNews($num=1) {
		$news = DataObject::get_one("ArticleHolder");
		return DataObject::get("ArticlePage", "ParentID = $news->ID", "Date DESC", "", $num);
	}
	
	// Latest Testimonial
	function LatestTestimonials($num=1) {
		return DataObject::get('Testimonial', null, null, null, $num);
	}
	
	// Latest Blog entry
	public function LatestBlog($num=1) {
		$articles = DataObject::get_one('BlogHolder');
		return ($articles) ? DataObject::get('BlogEntry', '', 'Date DESC', '', $num) : false;
	}
	
	// Latest Blog catagories
	public function LatestCatagories($num=1) {
		$articles = DataObject::get_one("BlogHolder");
		return ($articles) ? DataObject::get("BlogEntry", "ParentID = $articles->ID", "Created DESC", "", $num) : false;
	}
	
	// Latest comment
	public function LatestComments($num=1) {
		return DataObject::get("PageComment",  "IsSpam = 0 AND NeedsModeration = 0", "Created DESC", "", $num);
	}
	
	// Display Google map
	function DisplayGoogleMap() {
		return DataObject::get('Page', 'ShowGoogleMap = 1', '', null, '');
	}
	
	// Display in top menu
	function ShowInTopMenu() {
		return DataObject::get('Page', 'ShowInTopMenu = 1');
	}
	
	// Display in main menu
	function ShowInMainMenu() {
		return DataObject::get('Page', 'ShowInMainMenu = 1');
	}
	
	// Display in footer menu
	function ShowInFooterMenu() {
		return DataObject::get('Page', 'ShowInFooterMenu = 1');
	}
}