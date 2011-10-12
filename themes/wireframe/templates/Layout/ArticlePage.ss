<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>Article</h1>
	
	<h2>$Title</h2>
	<span class="date">$Date.Nice</span>
	
	<% if Photo %>
		$Photo.SetRatioSize(275,275)
	<% end_if %>
	
	$Content
	<p><a href="/article/">&laquo; Back to News</a></p>
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<div class="widget">
		<% include LatestComment %>
	</div><!-- /widget -->
	
	<div class="widget">
		<% include LatestBlog %>
	</div><!-- /widget -->
</div><!-- /grid_4 --> 