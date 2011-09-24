<% if GalleryItems %>
	<ul class="gallery clearfix">
		<% control GalleryItems %>
			<li>$GalleryItem</li>
		<% end_control %>
	</ul>
<% end_if %>