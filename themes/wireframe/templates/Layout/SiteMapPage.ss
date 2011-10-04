<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<div class="padding_1">
		<h1>$Title</h1>
		<% if Menu(1) %>
			<ul class="sitemap">
				<% control Menu(1) %>
					<li>
						<a href="$Link">$MenuTitle</a>
						<% if Children %>
							<ul>
								<% control Children %>
									<li>
										<a href="$Link">$MenuTitle</a>
										<% if Children %>
											<ul>
												<% control Children %>
													<li><a href="$Link">$MenuTitle</a></li>
												<% end_control %>
											</ul>
										<% end_if %>
									</li>
								<% end_control %>
							</ul>
						<% end_if %>
					</li>
				<% end_control %>
			</ul>
		<% end_if %>
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->

<div class="grid_2">
	<div class="padding_1">
		<% include LatestComment %>
		<% include LatestBlog %>
	</div><!-- /padding_1 -->
</div><!-- /col_2 -->
