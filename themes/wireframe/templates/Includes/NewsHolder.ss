
<div id="mainintrolead">

<% if NewsArticles %>

<% if FeaturedArticles %>
<h2><span class="arrow">Other headlines</span></h2>
<% else %>
<h2><span class="arrow">$SelectedYear Headlines</span></h2>
<% end_if %>

<% control NewsArticles %>
  
<h4><a href="{$Link}?year={$Top.SelectedYear}">$Title</a></h4>
<h5>$Date.Long</h5>
	<p>$Content.Summary(25)...</p>

<% end_control %> 




<% else %>

<% if FeaturedArticles %>
<% else %>


<p>Sorry, there are no articles for the period you have selected</p>
<% end_if %>


<% end_if %>


</div>