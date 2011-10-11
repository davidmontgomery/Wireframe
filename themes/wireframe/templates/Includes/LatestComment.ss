<% if LatestComments(1) %>
	<h4>Latest Comments</h4>
	<% control LatestComments %>
		<p><span class="comment_name">$Name</span> $Comment.LimitWordCount(10) <a href="$Link">Read more &raquo;</a></p>
	<% end_control %>
<% end_if %>