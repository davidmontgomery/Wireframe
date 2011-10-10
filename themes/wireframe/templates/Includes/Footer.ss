<div id="footer">
	<div id="inner_footer">
		<h4>Contact details</h4>
		<p>
			Ph: $SiteConfig.Phone<br />
			Address: $SiteConfig.Address<br />
			Email: $SiteConfig.Email
		</p>
		
		<% if ShowInFooterMenu %>
			<ul class="footer_nav">
				<% control ShowInFooterMenu %>
					<li><a href="$Link">$MenuTitle</a></li>
				<% end_control %>
			</ul><!-- /footer_nav -->
		<% end_if %>
	</div><!-- /inner_footer -->
</div><!-- /footer -->