var GPSSending = new XMLHttpRequest();

var locationOptions = {
  enableHighAccuracy: true,
  maximumAge: 10000,
  timeout: 10000
};

var URL = 'https://hackthenorth-1073.appspot.com';

simply.on('singleClick', function(e) {
  simply.text({
    title: 'Qarch',
    body: 'Obtaining GPS position',
  }, true);
  console.log('Obtaining GPS position');
  navigator.geolocation.getCurrentPosition(locationSuccess, locationError, locationOptions);
});

simply.on('longClick', function(e) {
});

simply.on('accelTap', function(e) {
});

simply.text({
  title: 'Qarch',
  body: 'Click to send gps data for route viewing',
}, true);

function locationSuccess(pos) {
  console.log('Got gps data, now sending');
  GPSSending.open(null, URL);
  GPSSending.send('lat= ' + pos.coords.latitude + ' lon= ' + pos.coords.longitude);
}

function locationError(err) {
  console.log('location error (' + err.code + '): ' + err.message);
}