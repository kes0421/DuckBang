<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Places Search Box</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/assets/css/map/map.css" />
  </head>
	<body>
	
	<div class= "map_searchBar">
		<div class = "map_searchWrap">
			<div class = "map_selectWrap">
				<div class = "map_inputLiner">
					<div class = "map_input-wrap">
    					<input type="text" placeholder="지역, 지하철역, 학교 검색"/>
    				</div>
    				<div class="map_search-wrap">
    					<button id="map_btn" class="map_search-btn"></button>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div id="map"></div>

	<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO1eRP2ExsPqAhGnAd2H6FO2Zo2dIefYE&callback=initAutocomplete&libraries=places&v=weekly&libraries=places&region=kr"
      async
    ></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/map/mainMap.js"></script>
  </body>
</html>
