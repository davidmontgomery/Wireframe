<div class="blog_summary">
	<h4 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h4>
	<p class="blog_date"><span class=""><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long</span></p>
	<% if TagsCollection %>
		<p class="tags">
			Tags:
			<% control TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
			<% end_control %>
		</p>
	<% end_if %>
	
	<!-- Blog image --> 
	<% if AttachedImage %>
	 <% control AttachedImage %>
			$CroppedImage(115,85)
		<% end_control %>
	<% end_if %>
	
	$ParagraphSummary
	<p class="blogVitals"><a href="$Link#PageComments_holder" class="comments" title="View Comments for this post">$Comments.Count comments</a> | <a href="$Link" class="readmore" title="Read Full Post">Read the full post</a></p>
</div><!-- /blogSummary -->