<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		<% if Children %>
			<ul class='listing article'>
				<% control ArticlePaginate %>
					<li>
						<div class="header">
							<h3><a href="$Link">$Title</a></h3>
							<span class="date">$Date.Nice</span>
						</div>
						<div class="body">
							<p>$Content.LimitWordCount(35, ... )</p>
						</div>
						<div class="footer">
							<p><a class='view_more' href="$Link">View more &raquo;</a></p>
						</div>
					</li>
				<% end_control %>
			</ul><!-- /listing -->
			<% if ArticlePaginate.MoreThanOnePage %>
				<% include ArticlePagination %>
			<% end_if %>
		<% else %>
			<p>There are no news articles at the moment.</p>
		<% end_if %>
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->
<div class="grid_2">
	<div class="padding_1">
		<% if Menu(2) %>
			<% include SubNavigation %>
		<% end_if %>
	</div>
</div><!-- /col_2 -->