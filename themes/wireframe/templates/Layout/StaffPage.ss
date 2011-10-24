<div class="grid_1">
	<% include BreadCrumbs %>
	
	<div class="detail">
		<h1>$Title</h1>
		<span class="date">$Date.Nice</span>
		
		<% if Photo %>
			$Photo.SetRatioSize(275,275)
		<% end_if %>
		$Content
		
		<div class="clear"><!-- --></div>
		
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