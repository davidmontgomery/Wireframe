<ul class="gallery">
	<% if GalleryPaginate %>
		<% control GalleryPaginate %>
			<li <% if MultipleOf(5) %>class="last"<% end_if %> >
				<a rel="prettyPhoto[gallery]" href="$MyGalleryImage.URL">
					$MyGalleryImage.CroppedImage(160, 110)
				</a>
			</li>
		<% end_control %>
	<% end_if %>
</ul><!-- /gallery -->

<% if GalleryPaginate.MoreThanOnePage %>
	<section class="pagination">
		<% if GalleryPaginate.PrevLink %>
			<a href="$GalleryPaginate.PrevLink"> Prev</a> |
		<% end_if %>
		<% control GalleryPaginate.Pages %>
			<% if CurrentBool %>
				<strong>$PageNum</strong>
			<% else %>
				<a href="$Link" title="Go to page $PageNum">$PageNum</a>
			<% end_if %>
		<% end_control %>
		<% if GalleryPaginate.NextLink %>
			| <a href="$GalleryPaginate.NextLink">Next</a>
		<% end_if %>
	</section><!-- /pagination -->
	<% end_if %>