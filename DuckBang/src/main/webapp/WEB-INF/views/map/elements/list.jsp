<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value='/resources/assets/css/map/list.css'/>">
<hr>
<div>
	<div id="area_list">
		<div id="list_count">
			지역 목록 ***개
		</div>
		<div id="list_unit_btn">
			단위 버튼(평, 제곱m)
		</div>
	</div>
	
	<div id="room_info_lists">
		<div class="room_info_list">
			<div class="room_image_div">
				<img class="room_image" src="https://cdn.ggumim.co.kr/cache/star/600/20201222151726uFqauJF8wD.jpg"/>
			</div>
			<div class="room_info">
				<div class="room_reco_sort">
					<div class="room_recommend">추천여부</div>
					<div class="room_sort">방 종류</div>
				</div>
				<div class="room_type">월세, 전세(가격)</div>
				<div class="room_size">평수, 제곱m/ 층수</div>
				<div class="room_area">동네</div>
				<div class="room_one_line">사용자가 강조하는 한줄</div>
			</div>
		</div>
		
		<c:forEach begin="0" end="21" var="i">
			<div class="room_info_list">
				<div class="room_image_div">
					<img class="room_image" src="https://cdn.ggumim.co.kr/cache/star/600/20201222151726uFqauJF8wD.jpg"/>
				</div>
				<div class="room_info">
					<div class="room_reco_sort">
						<div class="room_recommend">추천</div>
						<div class="room_sort">원룸 오픈형 원룸</div>
					</div>
					<div class="room_type">전세 7500 ${i }</div>
					<div class="room_size">23m 4층</div>
					<div class="room_area">성북구 돈암동</div>
					<div class="room_one_line">풀옵션에 깔끔한 원룸</div>
				</div>
			</div>
		</c:forEach>
		
		<div id="paging_list">
			<div>&lt;</div>
			<div>1</div>
			<div>2</div>
			<div>3</div>
			<div>4</div>
			<div>5</div>
			<div>&gt;</div>
		</div>
		
		<ul id="pagingul">
		
		</ul>
	</div>
</div>

<script src="<c:url value='/resources/assets/js/map/list.js'/>"></script>
