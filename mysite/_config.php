<?php

/**********************
 * 
 * Settings
 * 
 **********************/
$project          = 'mysite'; // Sets mysite directory
$projectName      = 'wireframe'; // Sets theme directory name
$siteName         = 'My website'; // Sets website name for contact email
$emailSubjectLine = 'Contact email subject line.'; // Sets contact email subject line
$adminEmail       = 'hello@mysite.com'; // Sets administrators email address


/**********************
 * 
 * Theme
 * 
 **********************/
SSViewer::set_theme($projectName);


/**********************
 * 
 * Constants
 * 
 **********************/
global $databaseConfig;
global $database;
global $project;	

define('CSS_PATH', THEMES_DIR . '/' . SSViewer::current_theme() . '/css');
define('JS_PATH', THEMES_DIR . '/' . SSViewer::current_theme() . '/js');
define('COMBINE_PATH', 'assets/combined');
define('EMAIL_SUBJECT_LINE', $emailSubjectLine);
define('SITE_NAME', $siteName);





/**********************
 * 
 * Environment
 * 
 **********************/
Validator::set_javascript_validation_handler('none');
// Director::set_environment_type('live');
// if(Director::isTest() BasicAuth::protect_entire_site();
// CMSMenu::remove_menu_item('ReportAdmin');

// custom site config
DataObject::add_extension('SiteConfig', 'CustomSiteConfig');

Director::set_dev_servers(array(
	$projectName
));


if (Director::isLive()) {
	// Site is in Live mode
	$databaseConfig = array(
		'type' => '',
		'server' => '',
		'username' => '',
		'password' => '',
		'database' => $projectName
	);
	
	SS_Cache::set_cache_lifetime('any', 3600, 100);
	
} else if (Director::isDev()) {
	// Site is in Dev and Test mode
	SS_Cache::set_cache_lifetime('any', -1, 100); // No partial caching
	SSViewer::flush_template_cache(); // Prevents needing ?flush=1 on the end of a URL
} else {
	// Site is Test
	SS_Cache::set_cache_lifetime('any', 3600, 100);
}

// Local database settings
$database = $projectName;
require_once("conf/ConfigureFromEnv.php");


/**********************
 * 
 * Misc
 * 
 **********************/
//File::$allowed_extensions[] = 'psd';


/**********************
 * 
 * CMS Rebranding
 * 
 **********************/
LeftAndMain::setApplicationName('Wireframe');
LeftAndMain::setLogo('themes/wireframe/images/cms-logo.png', 'margin-top: -3px;');
LeftAndMain::set_loading_image('themes/wireframe/images/CMSLoading.gif');
//LeftAndMain::require_css('themes/wireframe/css/cms.css');
 
 
/**********************
*
* Emails
*
**********************/
// Set the admin email address
Email::setAdminEmail($adminEmail);


/**********************
 *
 * Template / URLs
 *
 **********************/ 
// Set search form
FulltextSearchable::enable();

// Default database encoding
MySQLDatabase::set_connection_charset('utf8');

// Set the site locale
i18n::set_locale('en_US');

// Enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
SiteTree::$breadcrumbs_delimiter = ' &rsaquo; ';

// Image Quality
GD::set_default_quality(100);

// Tiny_mce config: wiki.moxiecode.com Need to implement modal
HtmlEditorConfig::get('cms')->setButtonsForLine(1, 'formatselect', 'styleselect', 'bold', 'italic', 'sub', 'sup', 'bullist', 'numlist', 'separator', 'link', 'unlink', 'anchor', 'separator', 'pasteword', 'code', 'separator');
HtmlEditorConfig::get('cms')->setButtonsForLine(2);
HtmlEditorConfig::get('cms')->setButtonsForLine(3);


/**********************
 *
 * Comments
 *
 **********************/
//Enable comment spam protection
MathSpamProtection::setEnabled();

// Enable comment moderation
PageComment::enableModeration();

// Force user to be logged in to post a comment
PageCommentInterface::set_comments_require_login(true);

