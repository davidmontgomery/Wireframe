<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>$Title</h1>
	
	<!-- Selected Tag -->
	<% if SelectedTag %>
		<h3>$SelectedTag</h3>
	<% else_if SelectedDate %>
		<h3>Viewing entries posted in $SelectedDate.Month $SelectedDate.Year</h3>
	<% end_if %>
	
	<!-- Blog Entries -->
	<% if BlogEntries %>
		<ul class="listing">
			<% control BlogEntries %>
				<li <% if Last %>class="last"<% end_if %>>
					<% include BlogSummary %>
				</li>
			<% end_control %>
		</ul><!-- /listing -->
	<% else %>
		<h3>There are no blog entries at this time.</h3>
	<% end_if %>
	
	<!-- Pagination -->
	<% include BlogPagination %>
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<% include BlogSideBar %>
</div><!-- /grid_4 -->