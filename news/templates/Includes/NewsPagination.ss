<p class="pagination">
	<% if NewsPaginate.PrevLink %>
		<span class="prev"><a href="$NewsPaginate.PrevLink">&laquo; Prev</a><span>
	<% end_if %>

	<% control NewsPaginate.Pages %>
		<% if CurrentBool %>
			<span class="current">$PageNum</span>
		<% else %>
			<span class="page"><a href="$Link" title="Go to page $PageNum">$PageNum</a></span>
		<% end_if %>
	<% end_control %>

	<% if NewsPaginate.NextLink %>
		<span class="next"><a href="$NewsPaginate.NextLink">Next &raquo;</a></span>
	<% end_if %>
</p><!-- /pagination -->