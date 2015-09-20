var rendererOptions = {
  draggable: true
};
var directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);;
var directionsService = new google.maps.DirectionsService();
var TempleUniversity = new google.maps.LatLng(39.98320375131727, -75.15682697296143);
var somewhere = new google.maps.LatLng(39.98017843488709, -75.15751361846924);
var map;
//console.log("temple " + TempleUniversity.getPosition());
function initialize() {
	hyper = {
			'start' : "39.98320375131727, -75.15682697296143",
			'end'   : "39.98017843488709, -75.15751361846924"
			};	
///////////////////////////////////////////////////////////hyperlapse-controls/////////////////////////////////////////////////////////////////////////
			hyperlapse = new Hyperlapse(document.getElementById('pano'), { 
				lookat: hyper.start,
				width:925,
				zoom: 1,
				use_lookat: false,
				elevation: 20
			});
			hyperlapse.onError = function(e) { 
				console.log(e);
			};
			hyperlapse.onRouteComplete = function(e) {
				hyperlapse.load();
			};
			hyperlapse.onLoadComplete = function(e) {		
				hyperlapse.next();
			};		
			$( "#play" ).click(function(e) {
					hyperlapse.play();
				});
			$( "#stop" ).click(function(e) {
					hyperlapse.pause();
				});
			$( "#next" ).click(function(e) {
					hyperlapse.next();
				});
			$( "#load" ).click(function() {	
				calcRoute();
			});
///////////////////////////////////////////////////////////hyperlapse-controls/////////////////////////////////////////////////////////////////////////

  var mapOptions = {
	zoom: 15,
	center: new google.maps.LatLng(39.98320375131727, -75.15682697296143)
  };
  map = new google.maps.Map(document.getElementById('map'), mapOptions);
  directionsDisplay.setMap(map);
  directionsDisplay.setPanel(document.getElementById('directionsPanel'));

  google.maps.event.addListener(directionsDisplay, 'directions_changed', function() {
	/*console.log("new start coord = "+ TempleUniversity.lat() + " : "+ TempleUniversity.lng());
	console.log("new end coord = "+ somewhere.lat() + " : "+ somewhere.lng());
	hyper.start = new google.maps.LatLng(TempleUniversity.lat(),TempleUniversity.lng());
	hyper.end = new google.maps.LatLng(somewhere.lat(),somewhere.lng());
	console.log("new start coord ***= "+ hyper.start);
	console.log("new end coord ***= "+ hyper.end);
	calcRoute();*/
	var legs = directionsDisplay.getDirections().routes[0].legs[0];
	hyper.start = new google.maps.LatLng(legs.start_location.H, legs.start_location.L);
	hyper.end = new google.maps.LatLng(legs.end_location.H, legs.end_location.L);
	calcRoute();
  });
//Map event listener that detects when markers are moved to a new location.
	//google.maps.event.addListener(directionsDisplay, 'directions_changed', function() { 
	//			console.log('Recalculating directions');
	//			console.log("kdf:"+this.getRouteIndex())
				//call calcRoute() in here to update
	//			calcRoute();
	//}); 
}
//This function calculates the route between 2 map markers
function calcRoute() {
	request = {
		origin: hyper.start, 
		destination: hyper.end, 
		travelMode: google.maps.DirectionsTravelMode.DRIVING
	};
	directionsService.route(request, function(response, status) {
		if (status == google.maps.DirectionsStatus.OK) { 
			directionsDisplay.setDirections(response);
			hyperlapse.generate({route: response});
		} else {
			console.log(status);
		}					
	})	
  
  //console.log("The: " + somewhere.position.lat());
}
google.maps.event.addDomListener(window, 'load', initialize);