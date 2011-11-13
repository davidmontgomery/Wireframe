<% if LatestBlog(1) %>
	<h4>Latest Post</h4>
	<% control LatestBlog %>
		<p class="blog_date">Posted: $Date.DayOfMonth $Date.Month</p>
		
		<p>$ParagraphSummary.LimitWordCount(10) <a href="$Link">Read more &raquo;</a></p>
	<% end_control %>
<% end_if %>