<% if LatestCatagories(1) %>
	<h4>Catagories</h4>
	<ul>
		<% control LatestCatagories(1) %>
			<li><a href="$Link">$Tag</a></li>
		<% end_control %>
	</ul>
<% end_if %>