<ul class="gallery clearfix">
	<% if GalleryPaginate %>
			<% control GalleryPaginate %><li <% if MultipleOf(5) %>class="last"<% end_if %> >
				<a rel="prettyPhoto[gallery]" href="$MyGalleryImage.URL">
					$MyGalleryImage.CroppedImage(168, 110)
				</a>
			</li><% end_control %>
	<% end_if %>
</ul><!-- /gallery -->
<% if GalleryPaginate.MoreThanOnePage %>
	<% include GalleryPagination %>
<% end_if %>
