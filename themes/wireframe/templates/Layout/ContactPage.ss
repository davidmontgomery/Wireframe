<% include GoogleMapScript %>

<div class="grid_full">
	<% include BreadCrumbs %>
</div><!-- /grid_full -->

<div class="grid_4">
	<div class="padding_1">
		<h1>$Title</h1>
		$Content
		<% if Success %>
			$SubmitText
		<% else %>
			$ContactForm
		<% end_if %>
	</div><!-- /padding_1 -->
</div><!-- /grid_1 -->

<div class="grid_4 last">
	<div class="padding_1">
		<% include GoogleMap %>
		
		<div class="col_1">
			$AddressBlock
		</div><!-- /col_1 -->
		
		<div class="col_1 last">
			<p>Email: $SiteConfig.Email</p>
			<p>Phone: $SiteConfig.Phone</p>
		</div><!-- /col_1 -->
	</div><!-- /padding_1 -->
</div><!-- /col_2 -->

<script>
	load();
</script>