<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="no-js ie6" lang="en"><![endif]-->
<!--[if IE 7 ]>   <html class="no-js ie7" lang="en"><![endif]-->
<!--[if IE 8 ]>   <html class="no-js ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="$ContentLocale"><!--<![endif]-->

<head>
	<% base_tag %>
	<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta name="description" content="<% if MetaDescription %>$MetaDescription<% else %>$SiteConfig.GlobalDescription<% end_if %>">
	<meta name="keywords" content="<% if MetaKeywords %>$MetaKeywords<% else %>$SiteConfig.GlobalKeywords<% end_if %>">
</head>

<body class="page_{$URLSegment} class_{$ClassName}">
	<% include Accessibility %>
	
	<div id="container">
		<div id="header">
			<% if RecursiveBannerImage %>
				$RecursiveBannerImage.CroppedImage(960,125)
			<% end_if %>
			
			<% include TopNav %>
			$SearchForm
			<% include Branding %>
		</div><!-- /header -->
		
		<% include Navigation %>
		
		<div class="layout typography clearfix">
			$Layout
		</div><!-- /layout -->
	</div><!-- /container -->
	
	<% include Footer %>
	<% include GoogleAnalytics %>
</body>
</html>