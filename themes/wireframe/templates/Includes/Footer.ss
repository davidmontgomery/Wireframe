<div id="footer">
	<div id="inner_footer">
		<h4>Contact details</h4>
		<ul class="footer_list">
			<li>Ph: $SiteConfig.Phone</li>
			<li>Address: $SiteConfig.Address</li>
			<li>Email: $SiteConfig.Email</li>
		</ul><!-- /footer_list -->
		
		<% if ShowInFooterMenu %>
			<ul class="footer_nav">
				<% control ShowInFooterMenu %>
					<li><a href="$Link">$MenuTitle</a></li>
				<% end_control %>
			</ul><!-- /footer_nav -->
		<% end_if %>
	</div><!-- /inner_footer -->
</div><!-- /footer -->