<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
		<h1>$Title</h1>
		<% if Testimonials %>
			<ul class="listing">
				<% control Testimonials %>
					<li <% if Last %>class='last'<% end_if %> >
						<p>$Testimonial</p>
						<p class="testimonial_name">$Name</p>
					</li>
				<% end_control %>
			</ul><!-- /listing -->
		<% end_if %>
</div><!-- /grid_1 -->

<div class="grid_4 last">
	[Snippet of content here.]
</div><!-- /grid_4 -->