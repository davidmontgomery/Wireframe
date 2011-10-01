<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		<% if Testimonials %>
			<ul class="listing">
				<% control Testimonials %>
					<li <% if Last %>class='last'<% end_if %> >
						<p>$Testimonial</p>
						<p class="testimonial_name">$Name</p>
					</li>
				<% end_control %>
			</ul><!-- testimonials -->
		<% end_if %>
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->

<div class="grid_2">
	<div class="padding_1">
		[Snippet of content here.]
	</div><!-- /padding_1 -->
</div><!-- /col_	2 -->