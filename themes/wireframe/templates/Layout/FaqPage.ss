<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		<% if Faqs %>
			<ul class="listing">
				<% control Faqs %>
					<li <% if Last %>class='last'<% end_if %> >
						<p>$Question <br /><span class='name'>$Answer</span></p>
					</li>
				<% end_control %>
			</ul><!-- testimonials -->
		<% end_if %>
		
		
	</div>
</div>
<div class="grid_2">
	<div class="padding_1">
		[Snippet of content here.]
	</div>
</div><!-- /col_	2 -->