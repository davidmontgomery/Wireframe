<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>$Title</h1>
	<% if Results %>
		<ul class="listing search">
			<% control Results %>
				<li>
					<div class="header">
						<% if MenuTitle %>
							<h4><a href="$Link">$MenuTitle</a></h4>
						<% else %>
							<h4><a href="$Link">$Title</a></h4>
						<% end_if %>
					</div><!-- /header -->
					<div class="body">
						<% if Content %>
							$Content.FirstParagraph(html)
						<% end_if %>
					</div><!-- /body -->
					<div class="footer">
						<p><a class="view_more" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more »</a></p>
					</div>
				</li>
			<% end_control %>
		</ul><!-- /listing -->
	<% else %>
		<p>No results found. Please try another search term.</p>
	<% end_if %>
	
	<% if Results.MoreThanOnePage %>
		<section class="pagination">
			<% if Results.NextLink %>
				<a class="next" href="$Results.NextLink" title="View the next page">Next</a>
			<% end_if %>
			
			<% if Results.PrevLink %>
				<a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
			<% end_if %>
			
			<% control Results.Pages %>
				<% if CurrentBool %>
					$PageNum
				<% else %>
					<a href="$Link" title="View page number $PageNum">$PageNum</a>
				<% end_if %>
			<% end_control %>
		</section><!-- /pagination -->
	<% end_if %>
</div><!-- /grid_1 -->

<div class="grid_4 last">
		$SideBar
		<% include LatestComment %>
		<% include LatestBlog %>
</div><!-- /col_2 -->