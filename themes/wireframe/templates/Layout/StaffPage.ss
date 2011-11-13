<div class="grid_1">
	<% include BreadCrumbs %>
	
	<div class="detail clearfix">
		<h1>$Title</h1>
		<% if StaffPhoto %>
			<% control StaffPhoto %>
				$CroppedImage(275, 183)
			<% end_control %>
		<% end_if %>
		
		$Content
		
		<% if Parent %>
			<p><a href="$Parent.Link">Back to $Parent.MenuTitle</a></p>
		<% end_if %>
	</div><!-- /detail -->
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<div class="widget">
		<% include LatestComment %>
	</div><!-- /widget -->
	
	<div class="widget">
		<% include LatestBlog %>
	</div><!-- /widget -->
</div><!-- /grid_4 -->