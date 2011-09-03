<div class="pagination">
	<% if ArticlePaginate.PrevLink %>
		<span class="prev"><a href="$ArticlePaginate.PrevLink">&laquo; Prev</a><span>
	<% end_if %>
	<% control ArticlePaginate.Pages %>
		<% if CurrentBool %>
			<span class="current">$PageNum</span>
		<% else %>
			<span class="page"><a href="$Link" title="Go to page $PageNum">$PageNum</a></span>
		<% end_if %>
	<% end_control %>
	<% if ArticlePaginate.NextLink %>
		<span class="next"><a href="$ArticlePaginate.NextLink">Next &raquo;</a></span>
	<% end_if %>
</div><!-- /pagination -->