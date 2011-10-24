<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>$Title</h1>
	<% control Children.GroupedBy(Category) %>
		<h3>$Category</h3>
		<ul>
			<% control Children %>
				<li><a href="$Link">$Title</a></li>
			<% end_control %>
		</ul>
	<% end_control %>
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<div class="widget">
		<% include LatestComment %>
	</div><!-- /widget -->
	
	<div class="widget">
		<% include LatestBlog %>
	</div><!-- /widget -->
</div><!-- /grid_4 -->
