<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>$Title</h1>
	$Content
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<% if Menu(2) %>
		<% include SubNavigation %>
	<% end_if %>
</div><!-- /grid_4 -->