<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_full">
	<h1>$Title</h1>
	<% control Children.GroupedBy(Category) %>
		<h3>$Category</h3>
		<% control Children %>
			$Title<br />
			$Position
		<% end_control %>
	<% end_control %>
	
	<% if Children %>
		<ul class="listing">
			<% control Children %><li>
				<h2><a href="$Link">$Title</a></h2>
				<span class="date">$Position | $Category</span>
				<% if StaffPhoto %>
					<a href="$link">
						$StaffPhoto.CroppedImage(138, 92)
					</a>
				<% end_if %>
				<div class="listing_content <% if StaffPhoto %>photo<% end_if %>">
					<p>$Content.LimitWordCount(35, ... ) <a href="$Link">Read more &raquo;</a></p>
				</div>
			</li><% end_control %>
		</ul>
	<% end_if %>
</div><!-- /grid_full -->