<div class="grid_full">
	<div class="padding_1">
		<% include Slideshow %>
		$Content
	</div><!-- /padding_1 -->
	
	<div class="grid_3">
		<div class="padding_1">
			<% if LatestNews %>
				<h4>Latest News</h4>
				<% control LatestNews(1) %>
					<p>$Content.LimitWordCount(10) <a href="$Link">more &raquo;</a></p>
				<% end_control %>
			<% end_if %>
		</div><!-- /padding_1 -->
	</div><!-- /grid_3 -->
	
	<div class="grid_3">
		<div class="padding_1">
			<% if LatestTestimonials %>
				<h4>Testimonials</h4>
				<% control LatestTestimonials(1) %>
					<p>$Testimonial.LimitWordCount(10) <a href="/testimonial">more &raquo;</a></p>
				<% end_control %>
			<% end_if %>
		</div><!-- /padding_1 -->
	</div><!-- /grid_3 -->
	
	<div class="grid_3 last">
		<div class="padding_1">
			<% if LatestBlog(1) %>
				<h4>Latest Posts</h4>
				<% control LatestBlog %>
					<h6>$Title</h6>
					<p class="blog_date">Posted: $Date.DayOfMonth $Date.Month</p>
					<p>$ParagraphSummary.LimitWordCount(10) <a href="$Link">more &raquo;</a></p>
				<% end_control %>
			<% end_if %>
		</div><!-- /padding_1 -->
	</div><!-- /grid_3 -->
	
	<div class="grid_3">
		<div class="padding_1">
			<% if LatestComments(1) %>
				<h4>Latest Comments</h4>
				<% control LatestComments %>
					<p><span class="comment_name">$Name</span> $Comment.LimitWordCount(10) <a href="$Link">more &raquo;</a></p>
				<% end_control %>
			<% end_if %>
		</div><!-- /padding_1 -->
	</div><!-- /grid_3 -->
	
	<div class="grid_3 last">
		<div class="padding_1">
			<% if LatestCatagories(1) %>
			<% control LatestCatagories(1) %>
				<a href="$Link">$Tag</a>
			<% end_control %>
			<% end_if %>
		</div><!-- /padding_1 -->
	</div><!-- /grid_3 -->
</div><!-- /grid_full -->