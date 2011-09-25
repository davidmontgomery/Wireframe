<div class="grid_full">
	<div class="padding_1">
		<% include Slideshow %>
		$Content
	</div><!-- /padding_1 -->
	
	<div class="grid_3">
		<div class="padding_1">
			<% if  LatestNews %>
				<h4>Latest News</h4>
				<% control LatestNews(1) %>
					<p>$Content.LimitWordCount(10) <a href="$Link">more &raquo;</a></p>
				<% end_control %>
			<% end_if %>
		</div><!-- /padding_1 -->
	</div><!-- /grid_3 -->
	<div class="grid_3">
		<div class="padding_1">
			<% if  LatestTestimonials %>
				<h4>Testimonials</h4>
				<% control LatestTestimonials(1) %>
					<p>$Testimonial.LimitWordCount(10) <a href="$Link">more &raquo;</a></p>
				<% end_control %>
			<% end_if %>
		</div><!-- /padding_1 -->
	</div><!-- /grid_3 -->
	<div class="grid_3 last">
		<div class="padding_1">
			[Another Snippet]
		</div><!-- /padding_1 -->
	</div><!-- /grid_3 -->
</div><!-- /grid_full -->	