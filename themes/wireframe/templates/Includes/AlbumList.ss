<% if Albums %>
	<ul class="listing gallery_albums">
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
				<p>$Description.LimitWordCount(25)</p>
				<p class="more"><a href="$Link">View album &raquo;</a></p>
			</div>
		</li><% end_control %>
	</ul>
<% else %>
	<p>There are no albums added yet</p>
<% end_if %>