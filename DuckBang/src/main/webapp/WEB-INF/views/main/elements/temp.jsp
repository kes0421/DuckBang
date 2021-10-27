<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/assets/css/info/other.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main/recommend.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="other">
	<div>
	<div id="recommend_title"><b>서초동</b> 추천매물</div>
	<div id="recommend_subTitle">
		<div class="recommend_option">서초동</div>
		<div class="recommend_option">원룸,투 쓰리룸, 오피스텔</div>
		<div class="recommend_option">월세,전세</div>
		<div id="recommend_moreRoom">
			<a href="./map?room_kind=all">더 많은 방 보기 ></a>		
		</div>
	</div>
	</div>
	<ul>
		<c:forEach begin="0" end="3" var="i">
			<li class="other_li">
				<div>
					<div>
						<button class="other_like_btn">하트</button>
					</div>
					<a href="./info?o_id=${recommend[i].o_id }" class="other_a">
						<div class="other_img">
							<img src="${recommend[i].image_1}"/>
							<div class="other_img_1"></div>
						</div>
						<div class="other_details">
							<p class="other_details_p1">${recommend[i].od_room_kind}</p>
							<h1 class="other_details_h1">
								${recommend[i].ok_code}
								<c:choose>
									<c:when test="${recommend[i].ok_code eq '월세'}">
										${recommend[i].ok_deposit} / ${recommend[i].ok_month_of_payment}
									</c:when>
									<c:otherwise>
										${recommend[i].ok_deposit}
									</c:otherwise>							
								</c:choose>
							</h1>
							<p class="other_details_p2">${recommend[i].od_apply_floor}층, ${recommend[i].od_private_area}m², 관리비 ${recommend[i].ok_maintenance_cost }만</p>
							<p class="other_details_p2">입주가능일: ${recommend[i].od_occupy_date}</p>
							<div class="other_details_div1"></div>
						</div>
					</a>	
				</div>
			</li>
		</c:forEach>
	</ul>
</div>