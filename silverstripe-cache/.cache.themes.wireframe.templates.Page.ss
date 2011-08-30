<?php
$val .= <<<SSVIEWER
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="no-js ie6" lang="en"><![endif]-->
<!--[if IE 7 ]>   <html class="no-js ie7" lang="en"><![endif]-->
<!--[if IE 8 ]>   <html class="no-js ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="
SSVIEWER;
$val .=  $item->XML_val("ContentLocale",null,true) ;
 $val .= <<<SSVIEWER
"><!--<![endif]-->
<head>
	
SSVIEWER;
$val .=  SSViewer::get_base_tag($val); ;
 $val .= <<<SSVIEWER

	<title>
SSVIEWER;
 if($item->hasValue("MetaTitle")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("MetaTitle",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
 &raquo; 
SSVIEWER;
$val .=  $item->obj("SiteConfig",null,true)->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</title>
	
SSVIEWER;
 if($item->hasValue("MetaDescription")) {  ;
 $val .= <<<SSVIEWER
<meta name="description" content="
SSVIEWER;
$val .=  $item->XML_val("MetaDescription",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 if($item->hasValue("MetaKeywords")) {  ;
 $val .= <<<SSVIEWER
<meta name="keywords" content="
SSVIEWER;
$val .=  $item->XML_val("MetaKeywords",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

</head>
<body class="page_
SSVIEWER;
$val .=  $item->XML_val("URLSegment",null,true) ;
 $val .= <<<SSVIEWER
 class_
SSVIEWER;
$val .=  $item->XML_val("ClassName",null,true) ;
 $val .= <<<SSVIEWER
">
	<ul class="accessibility">
	<li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#nav" title="Skip to navigation" accesskey="n">Skip to site navigation</a></li>
	<li><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#layout" title="Skip to content" accesskey="s">Skip to content</a></li>
</ul>

	<div id="container">
		<div id="header">
			
SSVIEWER;
$val .=  $item->XML_val("SearchForm",null,true) ;
 $val .= <<<SSVIEWER

			<a href="/" class="logo"></a>
<div class="branding" accesskey="1">
	<h1>
SSVIEWER;
$val .=  $item->obj("SiteConfig",null,true)->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</h1>
	<span class="tagline">
SSVIEWER;
$val .=  $item->obj("SiteConfig",null,true)->XML_val("Tagline",null,true) ;
 $val .= <<<SSVIEWER
</span>
</div><!-- /branding -->
			<!-- Maybe only required if heavy navigation -->

SSVIEWER;

if ( ($partial = $cache->load('53d726365a33257b29b1afd16f55a4bf88310f1f_'.sha1('Navigation'.'_'.$item->XML_val('ID', null, true).'_'.$item->obj('Aggregate', array("Page"), true)->XML_val('Max', array("LastEdited"), true).'_'.$item->obj('Aggregate', array("SiteConfig"), true)->XML_val('Max', array("LastEdited"), true)).'_0'))) $val .= $partial;
else {
$oldval = $val; $val = "";

;
 $val .= <<<SSVIEWER

	<div id="nav" class="clearfix">
		<ul>
			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Menu", array("1"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<li class="
SSVIEWER;
$val .=  $item->XML_val("URLSegment",null,true) ;
 $val .= <<<SSVIEWER
">
					<a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="Go to the 
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
 page" class="
SSVIEWER;
$val .=  $item->XML_val("LinkingMode",null,true) ;
 $val .= <<<SSVIEWER
" accesskey="
SSVIEWER;
$val .=  $item->XML_val("Pos",null,true) ;
 $val .= <<<SSVIEWER
">
						<span>
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</span>
					</a>
				</li>
			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

		</ul>
	</div>

SSVIEWER;

 $cache->save($val); $val = $oldval . $val ;
}
;
 $val .= <<<SSVIEWER

		</div><!-- /header -->
		<div id="layout" class="typography clearfix">
			
SSVIEWER;
$val .=  $item->XML_val("Layout",null,true) ;
 $val .= <<<SSVIEWER

		</div><!-- /layout -->
	</div><!-- /container -->
	<div id="footer">
	<div id="inner_footer">

	</div>
</div>
</body>
</html>
SSVIEWER;
