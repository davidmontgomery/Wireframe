<% if GalleryItems %>
	<ul class="gallery clearfix">
		<% control GalleryItems %><li <% if MultipleOf(6) %>class="last"<% end_if %>>$GalleryItem</li><% end_control %>
	</ul>
<% end_if %>