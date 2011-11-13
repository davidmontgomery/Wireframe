<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', '<% if IsLive %>UA-26582462-1<% else %>UA-XXXXXXXX-X<% end_if %>']);
	_gaq.push(['_trackPageview<% if ClassName = ErrorPage %>("/404.html?page=" + document.location.pathname + document.location.search + "&from=" + document.referrer)<% end_if %>']);
	
	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
</script>