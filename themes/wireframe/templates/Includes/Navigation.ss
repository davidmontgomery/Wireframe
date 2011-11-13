<div id="nav" class="clearfix">
	<ul>
		<% control Menu(1) %>
			<li class="$URLSegment">
				<a href="$Link" class="$LinkingMode" accesskey="$Pos">$MenuTitle</a>
			</li>
		<% end_control %>
	</ul>
</div><!-- /nav -->

<div class="sub_nav clearfix">
	<ul>
		<% control Menu(2) %>
			<% if Children %>
				<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode levela"><span>$MenuTitle.XML</span></a>
			<% else %>
				<li><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode levela"><span>$MenuTitle.XML</span></a>
			<% end_if %>
		<% end_control %>
	</ul>
</div><!-- /sub_nav -->