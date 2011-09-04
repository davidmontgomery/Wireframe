<div class="grid_full">
	<% include BreadCrumbs %>
</div>
<div class="grid_1">
	<div class="padding_1">
		<div class="detail">
			<div class="header">
				<h1>$Title</h1>
				<span class="date detail">$Date.Nice</span>
			</div>
			<div class="body">
				<% if Photo %>
					$Photo.SetRatioSize(275,275)
				<% end_if %>
				$Content
			</div>
			<div class="footer">
				<p><a href="/news/">&laquo; Back to News</a></p>
			</div>
		</div><!-- /detail -->
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->
<div class="grid_2">
	<div class="padding_1">
		<% if Menu(2) %>
			<% include SubNavigation %>
		<% end_if %>
	</div>
</div><!-- /col_2 --> 