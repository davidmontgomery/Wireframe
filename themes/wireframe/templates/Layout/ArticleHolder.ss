<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>$Title</h1>
	<% if Children %>
		<ul class='listing article'>
			<% control ArticlePaginate %>
				<li <% if Last %>class="last"<% end_if %>>
					<div class="header">
						<h2><a href="$Link">$Title</a></h2>
						<span class="date">$Date.Nice</span> 
					</div>
					<div class="body">
						<p>$Content.LimitWordCount(35, ... )</p>
					</div>
					<!-- <div class="footer">
											<p><a class='view_more' href="$Link">Read more &raquo;</a></p>
										</div> -->
				</li>
			<% end_control %>
		</ul><!-- /listing -->
		<% if ArticlePaginate.MoreThanOnePage %>
			<% include ArticlePagination %>
		<% end_if %>
	<% else %>
		<p>There are no articles at the moment.</p>
	<% end_if %>
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<div class="widget">
			<% include LatestComment %>
	</div><!-- /widget -->
	
	<div class="widget">
		<% include LatestBlog %>
	</div><!-- /widget -->
</div><!-- /col_2 -->