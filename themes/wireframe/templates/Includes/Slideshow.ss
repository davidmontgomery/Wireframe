<div class="slideshow_wrap">
	<% if BannerImages %>
		<div class="slideshow">
			<% control BannerImages %>
				<div class="slide_container">
					<div class="slide_content">
						<h2>$Heading</h2>
						<p>$Caption</p>
					</div>
					$MyBannerImage.CroppedImage(924, 263)
				</div>
			<% end_control %>
		</div><!-- /slideshow -->
	<% end_if %>
</div><!-- /slideshow_wrap -->