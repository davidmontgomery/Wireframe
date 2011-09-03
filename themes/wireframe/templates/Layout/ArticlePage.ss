<article>
	<header>
		<h2>$Title</h2>
		<time datetime="$Date.Format(Y-m-d)">$Date.Nice</time>
	</header>
	<% if Photo %>
		<div class="content_img">
			$Photo.SetRatioSize(275,275)
		</div><!-- /content_img -->
	<% end_if %>
	<div class="news_content">
		$Content
	</div><!-- /news_content -->
	<a href="/news/">&laquo; Back to News</a>
</article>