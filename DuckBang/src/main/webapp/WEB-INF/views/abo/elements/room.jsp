<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/abo/room.css" type="text/css" />
<div class="room">
	<div class="room_div1">
		<p class="room_div1_p1">
			이 부동산의 방
			<span>(${AboRoom.size()})</span>
		</p>
	</div>
	<!-- 
		<li>
			<div class="room_ul1_div1">
				<div>
					<button class="room_like_btn">하트</button>
				</div>			
			</div>
			<a href="" class="room_ul1_a1">
				<div class="room_ul1_div2">
					<div class="room_ul1_div3">
						<img src="이미지 주소">
					</div>
					<div class="room_ul1_div4"></div>
				</div>
				<div class="room_ul1_div5">
					<p class="room_ul1_p1">타입</p>
					<h1 class="room_ul1_h1">가격</h1>
					<p class="room_ul1_p2">3층, 52.75m², 관리비 3만</p>
					<p class="room_ul1_p2">강서구 화곡동  신축급깔끔한 2룸</p>
				</div>
			</a>
		</li>	
	
	 -->
	<ul class="room_ul1">
		<c:forEach items="${AboRoom}" var="AboRoom">
			<li>
				<div class="room_ul1_div1">
					<div>
						<button class="room_like_btn">하트</button>
					</div>			
				</div>
				<a href="./info?o_id=${AboRoom.o_id}" class="room_ul1_a1">
					<div class="room_ul1_div2">
						<div class="room_ul1_div3">
							<img src="${AboRoom.image_1}">
						</div>
						<div class="room_ul1_div4"></div>
					</div>
					<div class="room_ul1_div5">
						<p class="room_ul1_p1">${AboRoom.od_room_kind}</p>
						<h1 class="room_ul1_h1">
							${AboRoom.ok_code}
								<c:choose>
									<c:when test="${AboRoom.ok_code eq '월세'}">
										${AboRoom.ok_deposit} / ${AboRoom.ok_month_of_payment}
									</c:when>
									<c:otherwise>
										${AboRoom.ok_deposit}
									</c:otherwise>							
								</c:choose>
						</h1>
						<p class="room_ul1_p2">${AboRoom.od_apply_floor}층, ${AboRoom.od_private_area}m², 관리비 ${AboRoom.ok_maintenance_cost}만</p>
						<p class="room_ul1_p2">입주가능일 ${AboRoom.od_occupy_date}</p>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
	<!-- 버튼 리스트는 추후 DB만들면서 -->
</div>