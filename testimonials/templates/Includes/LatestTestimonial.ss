<% if LatestTestimonials %>
	<h4>Testimonials</h4>
	<% control LatestTestimonials(1) %>
		<p>$Testimonial.LimitWordCount(10) <a href="/testimonial">Read more &raquo;</a></p>
	<% end_control %>
<% end_if %>