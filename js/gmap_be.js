
function renderGMAP_Be(gmap_canvas_id, gps_x_id, gps_y_id, gps_z_id, lngCode) {
	
	google.maps.event.addDomListenerOnce(window, "load", function() { initialize(gmap_canvas_id, gps_x_id, gps_y_id, gps_z_id); } );
  
	
	function initialize(gmap_canvas_id, gps_x_id, gps_y_id, gps_z_id)
	{
		var gmapCanvas = document.getElementById(gmap_canvas_id);
		var gpsX = document.getElementById(gps_x_id);
		var gpsY = document.getElementById(gps_y_id);
		var gpsZ = document.getElementById(gps_z_id);
	
		$(gmapCanvas).before(
				'<div id="'+gmap_canvas_id+'_controls" style="padding:2px;">' +
					'<label for="gps_address">Address <input name="gps_address" id="gps_address" style="width:500px;"/></label> ' +
					'<button type="button" name="map_search" id="map_search" value="Search">Search</button>' +
				'</div>');
		
		var gpsAddr = document.getElementById("gps_address");
	
		var gmap = new googleMapControl(gmapCanvas, gpsX, gpsY, gpsZ, gpsAddr);
		gmap.init_googlemap();
		gmap.doGeocoderSearch(false);
				
		$( ('#'+gmap_canvas_id+'_controls #map_search').jqEscape() ).click(function() {			
			gmap.doGeocoderSearch(true); 
		});
	};
	
	 function googleMapControl(gmapCanvas, gpsX, gpsY, gpsZ, gpsAddr)
	 {
		var self = this;
		var def_x = 42.73055289022332;
	 	var def_y = 25.3291015625;
	 	var def_zoom = 7;
	 	var LatLng;
	 	
	 	self.gmapCanvas = gmapCanvas;
	 	self.gpsX = gpsX;
	 	self.gpsY = gpsY;
	 	self.gpsZ = gpsZ;
	 	self.gpsAddr = gpsAddr;
	 	self.map;
	 	self.centerMarker;
	 	self.geocoder;
	
	 	self.init_googlemap = function() {
	
			if(self.gpsX && self.gpsY && self.gpsX.value && self.gpsY.value && self.gpsX.value!="0" && self.gpsY.value!="0") {
				LatLng = new google.maps.LatLng(self.gpsX.value, self.gpsY.value);
			}
			else {
				self.gpsX.value = def_x;
				self.gpsY.value = def_y;
				LatLng = new google.maps.LatLng(def_x,def_y);
			}			
			
			self.gpsZ.value = self.gpsZ && self.gpsZ.value>1 ? self.gpsZ.value : def_zoom;
	
			var mapOptions = {
		          center: LatLng,
		          zoom: parseInt(self.gpsZ.value),
		          mapTypeId: google.maps.MapTypeId.ROADMAP,
		          disableDoubleClickZoom: true
		     };
	
		     self.map = new google.maps.Map(self.gmapCanvas, mapOptions);
			 self.centerMarker = new google.maps.Marker({position:LatLng, map:self.map, draggable:true, title:"Current Position", animation: google.maps.Animation.DROP});
		 self.geocoder = new google.maps.Geocoder();
	
	
		 google.maps.event.addListener(self.centerMarker, "dragend", function(event) {
	
			self.gpsX.value = event.latLng.lat();
			self.gpsY.value = event.latLng.lng();
	
		 	self.map.setCenter(event.latLng);
	
		 	self.doGeocoderSearch(false);
		 });
	
		 google.maps.event.addListener(self.map, "dragend", function(event) {
	
		 	if(true || self.map.getBounds().contains(self.centerMarker.position) ) {
		 		return;
			}
	
		 	self.gpsX.value = self.map.getCenter().lat();
		 	self.gpsY.value = self.map.getCenter().lng();
	
		 	self.centerMarker.position = self.map.getCenter();
		 	self.centerMarker.setMap(self.map);
	
		 	self.doGeocoderSearch(false);
		 });
	
		  google.maps.event.addListener(self.map, "dblclick", function(event) {
			 self.gpsX.value = event.latLng.lat();
			 self.gpsY.value = event.latLng.lng();
	
		 	self.map.setCenter(event.latLng);
		 	self.centerMarker.position = event.latLng;
		 	self.centerMarker.setMap(self.map);
	
		 	self.doGeocoderSearch(false);
		 });
	
	
		 google.maps.event.addListener(self.map, "zoom_changed", function(event) {
	
			self.gpsZ.value = self.map.getZoom();
	
		 	if(true || self.map.getBounds().contains(self.centerMarker.position) ) {
		 		return;
			}
	
		 	self.gpsX.value = self.map.getCenter().lat();
		 	self.gpsY.value = self.map.getCenter().lng();
	
		 	self.centerMarker.position = self.map.getCenter();
		 	self.centerMarker.setMap(self.map);
	
		 	self.doGeocoderSearch(false);
		 });
	};
	
	
	self.doGeocoderSearch = function(isAddressSearch) {
	
		var self = this;
		var gcRequest = new Object();
		gcRequest.location = new google.maps.LatLng(self.gpsX.value, self.gpsY.value);
	
		if(isAddressSearch && self.gpsAddr.value!="") {
			gcRequest.address = self.gpsAddr.value;
		}
	
		self.geocoder.geocode(gcRequest, function(results, status) {
	
			if(status == google.maps.GeocoderStatus.OK) {
				var latLng = results[0].geometry.location;
	
				if(isAddressSearch) {
					self.map.setCenter(latLng);
					self.map.setZoom(16);
	
					self.centerMarker.position = latLng;
					self.centerMarker.setMap(self.map);
	
					self.gpsX.value = latLng.lat();
					self.gpsY.value = latLng.lng();
				}
	
				self.gpsAddr.value = results[0].formatted_address;
			}
			else{
				//alert("Geocode was not successful for the following reason: " + status);
				self.gpsAddr.value = "";
			}
	
			self.gpsZ.value = self.map.getZoom();
	
			});
		};	
	}
}