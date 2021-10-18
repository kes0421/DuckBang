<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Places Search Box</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/css/map/map.css'/>" />
  </head>
	<body>
	
	<div id="map_map">
    	<input id="pac-input" class="controls" type="text" placeholder="지역, 지하철역, 학교 검색"/>
    	<div class="map_btn_div">
    		<button id="map_btn"></button>
    	</div>
    </div>
    
    <div id="map"></div>

	<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO1eRP2ExsPqAhGnAd2H6FO2Zo2dIefYE&callback=initAutocomplete&libraries=places&v=weekly&libraries=places&region=kr"
      async
    ></script>
    <script src="<c:url value='/resources/assets/js/map/mainMap.js'/>"></script>
  </body>
</html>
