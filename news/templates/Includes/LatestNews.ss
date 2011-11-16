<h4>Latest News</h4>
<% if LatestNews %>
	<% control LatestNews(1) %>
		<p>$Content.LimitWordCount(10) <a href="$Link">Read more &raquo;</a></p>
	<% end_control %>
<% else %>
	<p>There is news news at the moment.</p>
<% end_if %>