<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		$Content
		$Form
		$PageComments
	</div>
</div><!-- /grid_1 -->
<div class="grid_2">
	<div class="padding_1">
		<% if Menu(2) %>
			<% include SubNavigation %>
		<% end_if %>
	</div>
</div><!-- /col_2 -->