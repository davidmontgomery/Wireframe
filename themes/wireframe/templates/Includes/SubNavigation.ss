<% if Menu(2) %>
	<ul class="subnav">
		<% control Menu(2) %>
			<% if Children %>
				<li class="$LinkingMode">
					<a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode">
						<span>$MenuTitle.XML</span>
					</a>
			<% else %>
				<li>
					<a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode">
						<span>$MenuTitle.XML</span>
					</a>
			<% end_if %>
				<% if LinkOrSection = section %>
					<% if Children %>
						<ul>
							<% control Children %>
								<li>
									<a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode">
										<span>$MenuTitle.XML</span>
									</a>
								</li>
							<% end_control %>
						</ul>
					<% end_if %>
				<% end_if %>
				</li>
		<% end_control %>
	</ul>
<% end_if %>