<% include GoogleMapScript %>

<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_2">
	<h1>$Title</h1>
	$Content
	<% if Success %>
		$SubmitText
	<% else %>
		$ContactForm
	<% end_if %>
</div><!-- /grid_2 -->

<div class="grid_2 last">
	<% include GoogleMap %>
	
	<div class="col_1">
		$AddressBlock
	</div><!-- /col_1 -->
	
	<div class="col_1 last">
		<p>Email: $SiteConfig.Email</p>
		<p>Phone: $SiteConfig.Phone</p>
	</div><!-- /col_1 -->
</div><!-- /grid_2 -->

<script>
	load();
</script>