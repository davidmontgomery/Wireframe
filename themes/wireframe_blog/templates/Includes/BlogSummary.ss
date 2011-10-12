<h2><a href="$Link" title="View full post titled $Title">$MenuTitle</a></h2>
<span class="date">Posted by: $Author.XML on $Date.Long</span>

<!-- Tags -->
<% if TagsCollection %>
	<p class="tags">
		Tags:
		<% control TagsCollection %>
			<a href="$Link" title="View all posts tagged $Tag" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
		<% end_control %>
	</p>
<% end_if %>

<!-- Blog image -->
<% if AttachedImage %>
	<a href="$Link">
		<% control AttachedImage %>
			$CroppedImage(100,75)
		<% end_control %>
	</a>
<% end_if %>

<!-- Blog content -->
<p>$ParagraphSummary.LimitWordCount(50)</p>
<p>
	<a href="$Link#PageComments_holder" title="View Comments for this post">$Comments.Count comments</a> |
	<a href="$Link" title="Read Full Post">Read the full post</a>
</p>