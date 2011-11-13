<% if GalleryItems %>
	<ul class="gallery clearfix">
		<% control GalleryItems %><li <% if MultipleOf(7) %>class="last"<% end_if %>>$GalleryItem</li><% end_control %>
	</ul><!-- /gallery -->
<% end_if %>