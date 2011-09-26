<div class="slideshow_wrap">
	<% if BannerImages %>
		<div class="slideshow">
			<% control BannerImages %>
				<div>
					<h3>$Heading</h3>
					<p>$Caption</p>
					$MyBannerImage.CroppedImage(900, 263)
				</div>
			<% end_control %>
		</div><!-- /slideshow -->
	<% end_if %>
</div><!-- /slideshow_wrap -->