<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<h1>$Title</h1>
	<p>[This is the custom Login Page]</p>
	$Content
	$Form
	$PageComments
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<% if Menu(2) %>
		<% include SubNavigation %>
	<% end_if %>
</div><!-- /grid_4 -->