<% if LatestBlog(1) %>
	<h4>Latest Post</h4>
	<% control LatestBlog %>
		<h6>$Title</h6>
		<p class="blog_date">Posted: $Date.DayOfMonth $Date.Month</p>
		<p>$ParagraphSummary.LimitWordCount(10) <a href="$Link">more &raquo;</a></p>
	<% end_control %>
<% end_if %>