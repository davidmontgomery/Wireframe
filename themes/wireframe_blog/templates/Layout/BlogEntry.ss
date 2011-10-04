<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_1">
	<div class="padding_1">
		<div class="blog_entry">
			<h1>$title</h1>
			<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long | $Comments.Count <% _t('COMMENTS', 'Comments') %></p>
			<% if TagsCollection %>
				<p class="tags">
					 <% _t('TAGS', 'Tags:') %> 
					<% control TagsCollection %>
						<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
					<% end_control %>
				</p>
			<% end_if %>
			<% if IsWYSIWYGEnabled %>
				
				<!-- Blog Image -->
				<% if AttachedImage %>
				 <% control AttachedImage %>
						$CroppedImage(480,240)
					<% end_control %>
				<% end_if %>
				
				$Content
			<% else %>
				$ParsedContent
			<% end_if %>
			<br />
		</div><!-- /blogEntry -->
		
		<% if IsOwner %><p><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
		
		<% if TrackBacksEnabled %>
			<% include TrackBacks %>
		<% end_if %>
		$PageComments
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->

<div class="grid_2">
	<div class="padding_1">
		<% include BlogSideBar %>
	</div><!-- /padding_1 -->
</div><!-- /col_2 -->