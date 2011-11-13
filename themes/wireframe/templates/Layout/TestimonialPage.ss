<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>$Title</h1>
	<% if Testimonials %>
		<ul class="listing testimonials">
			<% control Testimonials %>
				<li <% if Last %>class='last'<% end_if %> >
					<p>$Testimonial</p>
					<% if Name %>
						<p class="testimonial_name">$Name</p>
					<% end_if %>
				
					<% if Position %>
						<p class="testimonial_position">$Position</p>
					<% end_if %>
				</li>
			<% end_control %>
		</ul><!-- /listing -->
	<% end_if %>
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<div class="widget">
		<% include LatestComment %>
	</div><!-- /widget -->
	
	<div class="widget">
		<% include LatestBlog %>
	</div><!-- /widget -->
</div><!-- /grid_4 -->