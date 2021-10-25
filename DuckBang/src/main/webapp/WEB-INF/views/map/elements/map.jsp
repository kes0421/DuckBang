<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Places Search Box</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/map/list.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/assets/css/map/map.css'/>" />
  </head>
	<body>
	
	<div id="mapContainer">
		<div id="map_map">
	    	<input id="pac-input" class="controls" type="text" placeholder="지역, 지하철역, 학교 검색"/>
	    	<input id="value_o_id" type="hidden" value="${o_id }"/>
	    	<input id="value_xcordinate" type="hidden" value="${xcordinate }"/>
	    	<input id="value_ycordinate" type="hidden" value="${ycordinate }"/>
	    	<div class="map_btn_div">
	    		<button id="map_btn"></button>
	    	</div>
	    </div>
	    
	    <div id="map"></div>
	</div>
	
	<div id="listContainer">
		<div id="list_body">
			<div id="list_area">
				<div id="list_count">
				
				</div>
				<div id="list_unit_box">
					<div class = "list_unit_btn">
					</div>
				</div>
			</div>
			
			<div id="list_room_infos">
				<div class="list_room_info">
					<div class="list_room_image_div">
						<img class="list_room_image" src="https://cdn.ggumim.co.kr/cache/star/600/20201222151726uFqauJF8wD.jpg"/>
					</div>
					<div class="room_info">
						<div class="list_room_reco_sort">
							<div class="list_room_recommend">추천여부</div>
							<div class="list_room_sort">방 종류</div>
						</div>
						<div class="list_room_type">월세, 전세(가격)</div>
						<div class="list_room_size">평수, 제곱m/ 층수</div>
						<div class="list_room_area">동네</div>
						<div class="list_room_one_line">사용자가 강조하는 한줄</div>
					</div>
				</div>
				
				<c:forEach begin="0" end="32" var="i">
					<div class="list_room_info">
						<div class="list_room_image_div">
							<img class="list_room_image" src="https://cdn.ggumim.co.kr/cache/star/600/20201222151726uFqauJF8wD.jpg"/>
						</div>
						<div class="room_info">
							<div class="list_room_reco_sort">
								<div class="list_room_recommend">추천</div>
								<div class="list_room_sort">원룸 오픈형 원룸</div>
							</div>
							<div class="list_room_type">전세 7500 ${i }</div>
							<div class="list_room_size">23m 4층</div>
							<div class="list_room_area">성북구 돈암동</div>
							<div class="list_room_one_line">풀옵션에 깔끔한 원룸</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div id="paging">
	
			</div>
		</div>
	
	</div>
	<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO1eRP2ExsPqAhGnAd2H6FO2Zo2dIefYE&callback=initMap&libraries=places&v=weekly&region=kr"
      async
    ></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/map/list.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/map/mainMap.js"></script>
  </body>
</html>
