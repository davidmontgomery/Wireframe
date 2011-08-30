<?php

class Page extends SiteTree {
	public static $db = array(
	);

	public static $has_one = array(
	);
}

class Page_Controller extends ContentController {
	
	protected function CacheSegment() {
		return $_SERVER["REQUEST_URI"];
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
			CSS_PATH . '/layout.css',
			CSS_PATH . '/typography.css',
			CSS_PATH . '/form.css',
			CSS_PATH . '/prettyPhoto.css'
		);
		
		// JS
		$js = array(
			JS_PATH . '/jquery-min.js',
			JS_PATH . '/prettyPhoto.js',
			JS_PATH . '/placeholder.js',
			JS_PATH . '/script.js'
		);
		
		// Modernizr - to be put in the document head section
		Requirements::insertHeadTags('<script src="' . JS_PATH . '/modernizr-1.7.min.js"></script>');
		
		if (Director::isLive()) { 
			Requirements::customScript("
				var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
				(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
				g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
				s.parentNode.insertBefore(g,s)}(document,'script'));
			", 'google-analytics');
		}
		
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
}