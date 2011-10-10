<div class="slideshow_wrap">
	<% if BannerImages %>
		<div class="slideshow">
			<% control BannerImages %>
				<div>
					<h2>$Heading</h2>
					<p>$Caption</p>
					$MyBannerImage.CroppedImage(920, 263)
				</div>
			<% end_control %>
		</div><!-- /slideshow -->
	<% end_if %>
</div><!-- /slideshow_wrap -->