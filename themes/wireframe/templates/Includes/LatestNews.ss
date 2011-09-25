<% if  LatestNews %>
	<h4>Latest News</h4>
	<% control LatestNews(3) %>
		<p>$Content.LimitWordCount(10) <a href="$Link">more &raquo;</a></p>
	<% end_control %>
<% end_if %>