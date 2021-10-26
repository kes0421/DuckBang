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
			
			</div>
			<div id="paging">
	
			</div>
		</div>
	
	</div>
	
	<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO1eRP2ExsPqAhGnAd2H6FO2Zo2dIefYE&callback=initMap&libraries=places&v=weekly&region=kr"
      async
    ></script>

	
	<script>
		//console.log(typeof ${summaryLists.size()});
		//console.log(${summaryLists.get(0).getImage_1()});
		
		const list_room_infos = document.getElementById('list_room_infos');
		var list_info_a;
		var list_class_info;
		var list_room_image_div;
		var list_room_image;
		var room_info;
		var list_room_reco_sort;
		var list_room_recommend;
		var list_room_sort;
		var list_room_type;
		var list_room_size;
		var list_room_area;
		var list_room_one_line;
		var no_list_info;
		
		var o_ids = [];
		
		function getLists() {
			
			//console.log('o_idLst : ' + o_ids)
			
			list_room_infos.innerHTML = '';
			
			for(let i = 0; i < o_ids.length; ++i) {
				
				<c:forEach items="${summaryLists}" var="list">
				
				if(o_ids[i] == ' ${list.getO_id()}'){
					
					console.log('o_ids[i] : ' + o_ids[i]);
					list_info_a = document.createElement('a');		
					list_class_info = document.createElement('div');
					list_room_image_div = document.createElement('div');
					list_room_image = document.createElement('img');
					room_info = document.createElement('div');
					list_room_reco_sort = document.createElement('div');
					list_room_recommend = document.createElement('div');
					list_room_sort = document.createElement('div');
					list_room_type = document.createElement('div');
					list_room_size = document.createElement('div');
					list_room_area = document.createElement('div');
					list_room_one_line = document.createElement('div');
					
					list_info_a.setAttribute('class', 'list_info_a');
					list_class_info.setAttribute('class', 'list_class_info');
					list_room_image_div.setAttribute('class', 'list_room_image_div');
					list_room_image.setAttribute('class', 'list_room_image');
					room_info.setAttribute('class', 'room_info');
					list_room_reco_sort.setAttribute('class', 'list_room_reco_sort');
					list_room_recommend.setAttribute('class', 'list_room_recommend');
					list_room_sort.setAttribute('class', 'list_room_sort');
					list_room_type.setAttribute('class', 'list_room_type');
					list_room_size.setAttribute('class', 'list_room_size');
					list_room_area.setAttribute('class', 'list_room_area');
					list_room_one_line.setAttribute('class', 'list_room_one_line');
					
					list_info_a.setAttribute('href', './info?o_id=${list.getO_id()}');
					
					list_room_image.setAttribute('src', '${list.getImage_1()}');
					list_room_image_div.appendChild(list_room_image);
					
					list_room_recommend.innerText = '추천';
					list_room_sort.innerText = '${list.getOd_room_kind()}';
					list_room_reco_sort.appendChild(list_room_recommend);
					list_room_reco_sort.appendChild(list_room_sort);
					room_info.appendChild(list_room_reco_sort);
					
					list_room_type.innerText = '${list.getOk_code()}' + '  ' + '${list.getOk_deposit()}';
					list_room_size.innerText = '${list.getOd_private_area()}' + '  ' + '${list.getOd_apply_floor()}';
					list_room_area.innerText = '${list.getOk_month_of_payment()}';
					list_room_one_line.innerText = '${list.getOd_short_lease()}';
					
					room_info.appendChild(list_room_type);
					room_info.appendChild(list_room_size);
					room_info.appendChild(list_room_area);
					room_info.appendChild(list_room_one_line);
					
					list_class_info.appendChild(list_room_image_div);
					list_class_info.appendChild(room_info);
					list_info_a.appendChild(list_class_info);
					list_room_infos.appendChild(list_info_a);
				} else if(o_ids.legth == 0) {
					// 검색결과가 없습니다. div 만들기
					no_list_info = document.createElement('div');
					no_list_info.setAttribute('class', 'no_list_info');
					no_list_info.innerHTML = '<h3>검색 결과가 없습니다.</h3>';
					
					list_room_infos.appendChild(no_list_info);
				}
			</c:forEach>
			
			}
		}

		var cityCircle;
		var infoWindow;

		function initMap() {
		<c:choose>
			<c:when test="${check eq 'get' || lat eq 'undefined'}">
			  const map = new google.maps.Map(document.getElementById("map"), {
			      center: {
			         lat: 37.566826,
			         lng: 126.9786567
			      },
			      zoom: 18,
			      mapTypeControl: false,
			      fullscreenControl: false,
			      mapTypeId: "roadmap",
			      options: {
			         gestureHandling: 'greedy'
			      }
			   });
			</c:when>
			<c:otherwise>
			  const map = new google.maps.Map(document.getElementById("map"), {
			      center: {
			         lat: ${lat},
			         lng: ${lng}
			      },
			      zoom: 18,
			      mapTypeControl: false,
			      fullscreenControl: false,
			      mapTypeId: "roadmap",
			      options: {
			         gestureHandling: 'greedy'
			      }
			   });
			</c:otherwise>
		</c:choose>
		   
		   
		   // Create the search box and link it to the UI element.
		   const input = document.getElementById("pac-input");
		   const map_map = document.getElementById("map_map");
		   const input_div = input.parentNode;
		   const map_btn = document.getElementById("map_btn");
		   const searchBox = new google.maps.places.SearchBox(input);

		   map.controls[google.maps.ControlPosition.TOP_LEFT].push(map_map);
		   input.style.marginTop = "13px";
		   input.style.marginLeft = "13px";
		  
		   // Bias the SearchBox results towards current map's viewport.
		   const clickEvent = map.addListener("bounds_changed", () => {
		                     searchBox.setBounds(map.getBounds());
		                  });

		   let markers = [];

		   // Listen for the event fired when the user selects a prediction and retrieve
		   // more details for that place.
		   searchBox.addListener("places_changed", () => {
		      const places = searchBox.getPlaces();

		      if (places.length == 0) {
		         return;
		      }

		      // Clear out the old markers.
		      markers.forEach((marker) => {
		         marker.setMap(null);
		      });
		      markers = [];

		      // For each place, get the icon, name and location.
		      const bounds = new google.maps.LatLngBounds();

		      places.forEach((place) => {
		         if (!place.geometry || !place.geometry.location) {
		            console.log("Returned place contains no geometry");
		            return;
		         }

		         const icon = {
		            url: place.icon,
		            size: new google.maps.Size(71, 71),
		            origin: new google.maps.Point(0, 0),
		            anchor: new google.maps.Point(17, 34),
		            scaledSize: new google.maps.Size(25, 25),
		         };

		         // Create a marker for each place.
		         markers.push(
		            new google.maps.Marker({
		               map,
		               icon,
		               title: place.name,
		               position: place.geometry.location,
		            })
		         );
		         
		         if (place.geometry.viewport) {
		            // Only geocodes have viewport.
		            bounds.union(place.geometry.viewport);
		         } else {
		            bounds.extend(place.geometry.location);
		         }
		         
		         // 검색위치 반경에 원 표시해주기
		         var latitude = place.geometry.location.lat();   // 위도
		         var longitude = place.geometry.location.lng();   // 경도

		         const citymap = {
		            center: { lat: latitude, lng: longitude},
		         };
		         
		         // 여러개 나오게하는거 방지
		         if(cityCircle) {
		            cityCircle.setMap(null);
		         }
		         
		         // 지도 드래그할때 원이랑 마커 지워주기
		         google.maps.event.addListener(map, 'drag', () => {
		            cityCircle.setMap(null);
		            for(var idx = 0; idx < markers.length; idx++) {
		                markers[idx].setMap(null);
		            }
		         });

		         // Add the circle for this city to the map.
		         // 맨위에 var cityCircle선언해줌
		         cityCircle = new google.maps.Circle({
		            strokeColor: "gray",   // 선의 색
		            strokeOpacity: 0.8,      // 선의 불투명도
		            strokeWeight: 2,      // 선의 두께
		            fillColor: "gray",      // 채우기 색깔
		            fillOpacity: 0.35,      // 채우기 불투명도
		            map,               // 표시할 맵의 이름
		            center: citymap.center,   // 원의 중심좌표
		            radius: 500,         // 원의 반지름 (단위: 미터)
		         });
		            // 여기까지 검색위치 반경에 원표시 해주기
		      });
		      map.fitBounds(bounds);

		   });
		  
		   // 현재 위치 불러오기
		   infoWindow = new google.maps.InfoWindow();

		   const locationButton = document.createElement("button");

		   locationButton.classList.add("custom-map-control-button");
		   map.controls[google.maps.ControlPosition.TOP_RIGHT].push(locationButton);
		   locationButton.addEventListener("click", () => {
		      // Try HTML5 geolocation.
		      if (navigator.geolocation) {
		         navigator.geolocation.getCurrentPosition((position) => {
		            const pos = {
		               lat: position.coords.latitude,
		               lng: position.coords.longitude,
		            };

		         const image = new google.maps.MarkerImage("resources/assets/icon/map/geolocationIcon.png", null, null, null, new google.maps.Size(15,15));
		         
		         // 현재 위치에 마커 표시해주기
		         new google.maps.Marker({
		             position: pos,
		             map,
		             title: "현재 위치", // 마커에 mouseover했을때 나오는 글
		             icon: image,
		           });
		         
		         //infoWindow.setPosition(pos);
		         //infoWindow.setContent("<div style='background-color: black;'>현재위치</div>");
		         infoWindow.open(map);
		         map.setCenter(pos);
		      },() => {
		         handleLocationError(true, infoWindow, map.getCenter());
		         });
		      } else {
		         // Browser doesn't support Geolocation
		         handleLocationError(false, infoWindow, map.getCenter());
		      }
		   });
		   // 여기까지 현재 위치 불러오기

		   //여러개 마커 찍기
		   makeMarkers(map);
		}


		// 여러가지 마커들 찍기
		function makeMarkers(map) {

		   // location테이블에서 x좌표, y좌표 가져옴
		   const xcordinate = document.getElementById("value_xcordinate").value;      // x좌표
		   const ycordinate = document.getElementById("value_ycordinate").value;      // y좌표
		   const o_id = document.getElementById("value_o_id").value;               // 매물번호

		   // 데이터 정리해주기
		   let x_slice = xcordinate.slice(1, -1);
		   let x_array = x_slice.split(',');

		   let y_slice = ycordinate.slice(1, -1);
		   let y_array = y_slice.split(',');
		   
		   let id_slice = o_id.slice(1, -1);
		   let id_array = id_slice.split(',');
		   
		   var locations = [];
		   
		   // locations 배열에 x좌표, y좌표, 매물번호 넣어주기
		   for(j = 0; j < x_array.length; j++) {
		      locations[j] = [];
		      for(k = 0; k < 2; k++) {
		         locations[j][0] = x_array[j];
		         locations[j][1] = y_array[j];
		         locations[j][2] = id_array[j];
		      }
		   }
		   
		   var listContainer = document.getElementById("listContainer");
		   var map_div = document.getElementById("map");
		   
		   google.maps.event.addListener(map, 'zoom_changed', function() {
		      o_ids = [];
		      
		      listContainer.style.visibility = "visible";
		      map_div.style.width = "100%";
		      
		      const boundss = map.getBounds();
		      var endLat = boundss.getNorthEast().lat();
		      var endLng = boundss.getNorthEast().lng();
		      
		      var startLat = boundss.getSouthWest().lat();
		      var startLng = boundss.getSouthWest().lng();
		      
		      for(i = 0; i < locations.length; i++) {
		         if((locations[i][0] >= startLat && locations[i][0] <= endLat) && (locations[i][1] >= startLng && locations[i][1] <= endLng)){
		            o_ids.push(locations[i][2]);
		         }
		      }
		      console.log("o_ids: " + o_ids);
		      getLists();

		   });
		   
		   google.maps.event.addListener(map, 'dragend', function() {
		      o_ids = [];
		      
		      listContainer.style.visibility = "visible";
		      map_div.style.width = "100%";
		      
		      const boundss = map.getBounds();
		      var endLat = boundss.getNorthEast().lat();
		      var endLng = boundss.getNorthEast().lng();
		      
		      var startLat = boundss.getSouthWest().lat();
		      var startLng = boundss.getSouthWest().lng();

		      for(i = 0; i < locations.length; i++) {
		         if((locations[i][0] >= startLat && locations[i][0] <= endLat) && (locations[i][1] >= startLng && locations[i][1] <= endLng)){
		            o_ids.push(locations[i][2]);
		         }
		      }

			getLists();
		   });
		   
		   // 마커 추가해줌
		   addMarker(locations, map);
		}

		// 마커 출력 함수
		function addMarker(locations, map) {
		   var i, marker;
		   
		   for(i = 0; i < locations.length; i++){
		   
		      marker = new google.maps.Marker({
		         position: new google.maps.LatLng(locations[i][0], locations[i][1]),
		         label: "1",
		         map: map,
		      });
		      
		      google.maps.event.addListener(marker, 'click', (function(marker, i) {
		         return function() { 
		            sendNumGet('./info', locations[i][2]);
		         } 
		      })(marker, i));
		   }
		}

		// 마커 클릭시 get방식으로 매물번호 info에 넘겨주기
		// 새창으로 넘기기
		function sendNumGet(url, o_id) {

		   var form = document.createElement('form');
		   form.setAttribute('method','get');
		   form.setAttribute('action', url);
		   document.charset = "utf-8";
		   
		   var hiddenField = document.createElement("input");
		   hiddenField.setAttribute('type','hidden');
		   hiddenField.setAttribute('name','o_id');
		   hiddenField.setAttribute('value',o_id);
		   form.appendChild(hiddenField);
		   
		   document.body.appendChild(form);
		   form.submit(); //전송하기
		   
		}

		// 현재위치 검색 시 에러 잡아주는 함수
		function handleLocationError(browserHasGeolocation, infoWindow, pos) {
		   infoWindow.setPosition(pos);
		   infoWindow.setContent(
		      browserHasGeolocation
		      ? "Error: The Geolocation service failed."
		      : "Error: Your browser doesn't support geolocation."
		   );
		   infoWindow.open(map);
		}

	</script>
	</body>
</html>