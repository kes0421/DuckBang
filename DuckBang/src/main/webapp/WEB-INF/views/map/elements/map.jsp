<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value='/resources/assets/css/map/map.css'/>">
<div>
	<div id="map"></div>
</div>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO1eRP2ExsPqAhGnAd2H6FO2Zo2dIefYE&callback=initMap&region=kr"></script>
<script src="<c:url value='/resources/assets/js/map/mainMap.js'/>"></script>
