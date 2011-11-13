<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_2">
	<h1>$Title</h1>
	$Content
	<% if Success %>
		$SubmitText
	<% else %>
		$FormTemplate
	<% end_if %>
</div><!-- /grid_2 -->

<div class="grid_4 last">
	<div class="widget">
		<% include LatestComment %>
	</div><!-- /widget -->
	
	<div class="widget">
		<% include LatestBlog %>
	</div><!-- /widget -->
</div><!-- /grid_4 -->
