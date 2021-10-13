var map;

function initMap() {
  var seoul = { lat: 37.5642135 ,lng: 127.0016985 };
  map = new google.maps.Map( document.getElementById('map'), {
      zoom: 12,
      center: seoul
    });
}