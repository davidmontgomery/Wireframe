<h1>$Title</h1>
<% if Children %>
	<section class='listing'>
		<% control ArticlePaginate %>
			<article>
				<header>
					<h2><a href="$Link">$Title</a></h2>
					<time datetime="$Date.Format(Y-m-d)">$Date.Nice</time>
				</header>
				<p>$Content.LimitWordCount(35, ... )</p>
				<a class='view_more' href="$Link">View more &raquo;</a>
			</article>
		<% end_control %>
	</section><!-- /listing -->

	<% if ArticlePaginate.MoreThanOnePage %>
		<section class="pagination">
			<% if ArticlePaginate.PrevLink %>
				<a href="$ArticlePaginate.PrevLink">&laquo; Prev</a> |
			<% end_if %>

			<% control ArticlePaginate.Pages %>
				<% if CurrentBool %>
					<strong>$PageNum</strong>
				<% else %>
					<a href="$Link" title="Go to page $PageNum">$PageNum</a>
				<% end_if %>
			<% end_control %>

			<% if ArticlePaginate.NextLink %>
				| <a href="$ArticlePaginate.NextLink">Next &raquo;</a>
			<% end_if %>
		</section><!-- /pagination -->
	<% end_if %>
	<% else %>
		<p>There are no news articles at the moment.</p>
	<% end_if %>