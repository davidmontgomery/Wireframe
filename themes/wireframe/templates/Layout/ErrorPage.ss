<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		<p>[This is the custom Error Page]</p>
		$Content
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->

<div class="grid_2">
	<div class="padding_1">
		<% if Menu(2) %>
			<% include SubNavigation %>
		<% end_if %>
	</div><!-- /padding_1 -->
</div><!-- /grid_2 -->