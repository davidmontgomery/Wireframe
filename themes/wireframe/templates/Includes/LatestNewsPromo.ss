<% control GetLatestNews(1) %>
	<div class="box promo <% if MultipleOf(3) %>last<% end_if %>">
		<div class="padding_1">
			<h3>Latest News</h3>
			<h4>$Title</h4>
			<p>$Content.LimitWordCount(10) <a href="$Link">more &raquo;</a></p>
		</div>
	</div><!-- /box -->
<% end_control %>