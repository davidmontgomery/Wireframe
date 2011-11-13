<% if DisplayHomepage %>
	<% control DisplayHomepage %>
		<div class="box promo <% if MultipleOf(2) %>last<% end_if %>">
			<h3>$Title</h3>
			$IntroSnippet
		</div><!-- /box -->
	<% end_control %>
<% end_if %>