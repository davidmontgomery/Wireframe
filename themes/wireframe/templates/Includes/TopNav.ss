<% if ShowInTopMenu %>
	<ul class="top_nav">
		<% control ShowInTopMenu %>
			<li><a href="$Link">$MenuTitle</a></li>
		<% end_control %>
	</ul><!-- /top_nav -->
<% end_if %>