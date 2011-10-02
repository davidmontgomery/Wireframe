<% if ShowInTopMenu %>
	<ul class="top_nav">
		<% control ShowInTopMenu %>
			<li><a href="$Link">$MenuTitle</a></li>
		<% end_control %>
	</ul>
<% end_if %>