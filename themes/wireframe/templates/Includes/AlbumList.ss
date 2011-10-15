<% if Albums %>
	<ul class="listing gallery">
		<% control Albums %><li class="<% if MultipleOf(2) %>last<% end_if %> clearfix">
				<h2><a href="$Link" title="$Title">$AlbumName</a></h2>
				<% if CoverImage %>
					<div class="image_wrap">
						<a href="$Link">
							<% control FormattedCoverImage %>
								<img src="$URL" alt="" />
							<% end_control %>
						</a>
					</div>
				<% end_if %>
			
				<div class="details">
					<div class="description">
						<p>$Description.LimitWordCount(60)</p>
						<p><a href="$Link">View album &raquo;</a></p>
					</div>
				</div>
			</li><% end_control %>
	</ul>
<% else %>
	<p>There are no albums added yet</p>
<% end_if %>