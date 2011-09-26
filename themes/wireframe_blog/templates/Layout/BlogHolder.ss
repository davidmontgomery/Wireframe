<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		<% if SelectedTag %>
			<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
		<% else_if SelectedDate %>
			<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</h3>
		<% end_if %>

		<% if BlogEntries %>
			<% control BlogEntries %>
					<% include BlogSummary %>
			<% end_control %>
		<% else %>
			<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
		<% end_if %>

		<% include BlogPagination %>
	</div>
</div>
<div class="grid_2">
	<div class="padding_1">
		<% include BlogSideBar %>
	</div>
</div><!-- /col_2 -->