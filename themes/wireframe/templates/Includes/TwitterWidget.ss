<div class="widget">
	<h4>Twitter</h4>
	<script src="http://widgets.twimg.com/j/2/widget.js"></script>
	<script>
		new TWTR.Widget({
			version: 2,
			type: 'profile',
			rpp: 1,
			interval: 6000,
			width: 215,
			height: 300,
			theme: {
				shell: {
					background: '#f2eeea',
					color: '#b1a7a7'
				},
				tweets: {
					background: '#fff',
					color: '#717171',
					links: '#D12D07'
				}
			},
			features: {
				scrollbar: false,
				loop: true,
				live: false,
				hashtags: true,
				timestamp: true,
				avatars: false,
				behavior: 'all'
			}
		}).render().setUser('Dave_Mont').start();
	</script>
</div><!-- /widget -->