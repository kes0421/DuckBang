<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/like/list.css" type="text/css" />
<div class="room">
	<div class="room_div1">
		<p class="room_div1_p1">
			내가 찜한 방 목록
			<span>(${likeRoom.size()}개)</span>
		</p>
	</div>
	<ul class="room_ul1">
		<c:forEach items="${likeRoom}" var="likeRoom">
			<li>
				<div class="room_ul1_div1">
					<div>
						<button class="room_like_btn">하트</button>
					</div>			
				</div>
				<a href="./info?o_id=" class="room_ul1_a1">
					<div class="room_ul1_div2">
						<div class="room_ul1_div3">
							<img src="${likeRoom.image_1}">
						</div>
						<div class="room_ul1_div4"></div>
					</div>
					<div class="room_ul1_div5">
						<p class="room_ul1_p1">${likeRoom.od_room_kind}</p>
						<h1 class="room_ul1_h1">
							${likeRoom.ok_code}
								<c:choose>
									<c:when test="${likeRoom.ok_code eq '월세'}"> 
										${likeRoom.ok_deposit}/${likeRoom.ok_month_of_payment}
									</c:when>
									<c:when test="${likeRoom.ok_deposit % 10000 == 0}">
										${Math.round(likeRoom.ok_deposit/10000)}억
									</c:when>	
									<c:when test="${likeRoom.ok_deposit >= 10000}">
										${Math.round(likeRoom.ok_deposit/10000)}억${likeRoom.ok_deposit % 10000}
									</c:when>
									<c:otherwise>
										${likeRoom.ok_deposit}
									</c:otherwise>						
								</c:choose>
						</h1>
						<p class="room_ul1_p2">${likeRoom.od_apply_floor}층, ${likeRoom.od_private_area}m², 관리비 ${likeRoom.ok_maintenance_cost}만</p>
						<p class="room_ul1_p2">입주가능일 ${likeRoom.od_occupy_date}</p>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
	<!-- 버튼 리스트는 추후 DB만들면서 -->
</div>