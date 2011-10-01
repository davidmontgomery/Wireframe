<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAA8TBoET4D24iCfuxEAkusrRTwJ47QIDAE2ssuUUtiOyooGf13KRTRkTZzDBb2OegrKwOjaqNeWIwYJQ" type="text/javascript"></script>
	<script>
		var map;
		var geocoder = null;
		var addressMarker;
		
		function load() {
			if (GBrowserIsCompatible()) {
				map = new GMap2(document.getElementById("map"));
				map.addControl(new GSmallMapControl());
				map.addControl(new GMapTypeControl());
				map.setCenter(new GLatLng(54, -4.1), 5);
				map.setMapType({$MapType});
				geocoder = new GClientGeocoder();
				showAddress("$SiteConfig.Address");
			}
		}
		
		function showAddress(address) {
			if (geocoder) {
				geocoder.getLatLng(address,
					function(point) {
						if (!point) {
							alert(address + " not found");
						} else {
							if (addressMarker) {
								map.removeOverlay(addressMarker);
							}
							addressMarker = new GMarker(point);
							map.setCenter(point, 15);
							map.addOverlay(addressMarker);
						}
					}
				);
			}
		}
</script>