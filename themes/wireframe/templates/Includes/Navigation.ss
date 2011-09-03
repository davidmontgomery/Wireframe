<!-- Maybe only required if heavy navigation -->
<% cached 'Navigation', ID, Aggregate(Page).Max(LastEdited), Aggregate(SiteConfig).Max(LastEdited) %>
	<div id="nav" class="clearfix">
		<ul>
			<% control Menu(1) %>
				<li class="$URLSegment">
					<a href="$Link" class="$LinkingMode" accesskey="$Pos">$MenuTitle</a>
				</li>
			<% end_control %>
		</ul>
	</div>
<% end_cached %>