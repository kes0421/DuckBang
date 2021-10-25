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
    <script src="${pageContext.request.contextPath }/resources/assets/js/map/list.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/map/mainMap.js"></script>
	
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
				}
			
			</c:forEach>
				
			}			
			
			
		}
		
	</script>
	
  </body>
</html>
