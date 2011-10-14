<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>$Title</h1>
	<% if Faqs %>
		<ul class="listing faqs">
			<% control Faqs %>
			<li <% if Last %>class="last"<% end_if %> >
				<h3><span>Q.</span> $Question</h3>
				<div>
					<p>A. $Answer</p>
				</div>
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
</div><!-- /grid_2 -->