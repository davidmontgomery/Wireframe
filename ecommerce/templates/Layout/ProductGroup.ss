<% include ProductMenu %>

<div id="ProductGroup">
	<% if Parent %><div id="Breadcrumbs" class="typography"><p>$Breadcrumbs</p></div><% end_if %>
	<h1 class="pageTitle">$Title</h1>
	
	<% if Content %>
		<div class="typography">
			$Content
		</div>
	<% end_if %>
	
	<% if Products %>
		<div id="Products" class="category">
			<div class="resultsBar typography">
				<% if SortLinks %><span class="sortOptions">Sort by <% control SortLinks %><a href="$Link" class="sortlink $Current">$Name</a> <% end_control %></span><% end_if %>
				<span class="resultsShowing">Showing <span class="firstProductIndex">1</span> to <span class="lastProductIndex">$Products.Count</span> of <span class="productsTotal">$Products.TotalCount</span> products</span>
			</div>
			<div class="clear"><!-- --></div>
			<ul class="productList">
				<% control Products %>
					<% include ProductGroupItem %>
				<% end_control %>
			</ul>
			<div class="clear"><!-- --></div>
		</div>
	<% end_if %>
	
	<% if Products.MoreThanOnePage %>
	  <p>page: 
	  <% if Products.PrevLink %>
	    <a href="$Products.PrevLink">previous</a> | 
	  <% end_if %>
	 
	  <% control Products.Pages %>
	    <% if CurrentBool %>
	      <strong>$PageNum</strong> 
	    <% else %>
	      <a href="$Link" title="Go to page $PageNum">$PageNum</a> 
	    <% end_if %>
	  <% end_control %>
	 
	  <% if Products.NextLink %>
	    | <a href="$Products.NextLink">next</a>
	  <% end_if %>
	  </p>
	<% end_if %>
	
</div>