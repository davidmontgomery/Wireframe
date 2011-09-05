<div class="pagination">
	<% if GalleryPaginate.PrevLink %>
		<span class="prev"><a href="$GalleryPaginate.PrevLink"> Prev</a></span>
	<% end_if %>
	<% control GalleryPaginate.Pages %>
		<% if CurrentBool %>
			<span class="page">$PageNum</span>
		<% else %>
			<span class="current"><a href="$Link">$PageNum</a></span>
		<% end_if %>
	<% end_control %>
	<% if GalleryPaginate.NextLink %>
		<span class="next"><a href="$GalleryPaginate.NextLink">Next</a></span>
	<% end_if %>
</div><!-- /pagination -->