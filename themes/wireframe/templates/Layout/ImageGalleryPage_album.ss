$GalleryLayout

<% if GalleryLayout %>
	<% if GalleryItems.MoreThanOnePage %>
		<div class="pagination">
			<% if GalleryItems.NotFirstPage %>
				<span class="prev"><a href="$GalleryItems.PrevLink"> Prev</a></span>
			<% end_if %>
			
			<% control GalleryItems.Pages %>
				<% if CurrentBool %>
					<span class="page">$PageNum</span>
				<% else %>
					<span class="current"><a href="$Link">$PageNum</a></span>
				<% end_if %>
			<% end_control %>
			
			<% if GalleryItems.NotLastPage %>
				<span class="next"><a href="$GalleryItems.NextLink">Next</a></span>
			<% end_if %>
		</div><!-- /pagination -->
	<% end_if %>
<% else %>
	<p>There are no photos in this album yet.</p>
<% end_if %>