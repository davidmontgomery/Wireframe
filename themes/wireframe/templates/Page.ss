<!DOCTYPE html>
<html class="no-js" lang="$ContentLocale">
<head>
	<% base_tag %>
	<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<% if MetaDescription %><meta name="description" content="$MetaDescription"><% end_if %>
	<% if MetaKeywords %><meta name="keywords" content="$MetaKeywords"><% end_if %>
</head>
<body class="page_{$URLSegment} class_{$ClassName}">
	<% include Accessibility %>
	<div id="container">
		<div id="header">
			$SearchForm
			<% include Branding %>
			<% include Navigation %>
		</div><!-- /#header -->
		<div id="layout" class="typography clearfix">
			$Layout
		</div><!-- /#layout -->
	</div><!-- /#container -->
	<% include Footer %>
</body>
</html>