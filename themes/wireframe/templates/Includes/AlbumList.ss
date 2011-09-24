<% if Albums %>
	<ul class="gallery_list">
		<% control Albums %>
			<li class="clearfix">
				<h5><a href="$Link" title="$Title">$AlbumName</a></h5>
				<% if CoverImage %>
					<div class="image_wrap">
						<a href="$Link">
							<% control FormattedCoverImage %>
								<img src="$URL" alt="" />
							<% end_control %>
							<!-- $CoverImage.SetWidth(50) -->
						</a>
					</div>
				<% end_if %>
			
				<div class="details">
					<div class="description">
						<p>$Description.LimitWordCount(60)</p>
						<p><a href="$Link">View album</a></p>
					</div>
				</div>
			</li>
		<% end_control %>
	</ul>
<% else %>
	<p>There are no albums added yet</p>
<% end_if %>