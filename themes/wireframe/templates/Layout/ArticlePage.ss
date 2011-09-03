<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		
		
		<h1>$Title</h1>
		<span class="date">$Date.Nice</span>
		<% if Photo %>
			$Photo.SetRatioSize(275,275)
		<% end_if %>
		$Content
		<p><a href="/news/">&laquo; Back to News</a></p>
		
		
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->
<div class="grid_2">
	<div class="padding_1">
		<% if Menu(2) %>
			<% include SubNavigation %>
		<% end_if %>
	</div>
</div><!-- /col_2 -->