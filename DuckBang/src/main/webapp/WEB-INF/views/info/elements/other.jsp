<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/assets/css/info/other.css" rel="stylesheet" type="text/css"/>

<div class="other">
	<h1>이 중개사무소의 다른 방</h1>
	<ul>
		<c:forEach begin="0" end="3" var="i">
			<li class="other_li">
				<div>
					<div>
						<button class="other_like_btn">하트</button>
					</div>
					<a href="./info?o_id=${InfoOther[i].o_id }" class="other_a">
						<div class="other_img">
							<img src="${InfoOther[i].image_1}"/>
							<div class="other_img_1"></div>
						</div>
						<div class="other_details">
							<p class="other_details_p1">${InfoOther[i].od_room_kind}</p>
							<h1 class="other_details_h1">
								${InfoOther[i].ok_code}
								<c:choose>
									<c:when test="${InfoOther[i].ok_code eq '월세'}">
										${InfoOther[i].ok_deposit}/${InfoOther[i].ok_month_of_payment}
									</c:when>
									<c:when test="${InfoOther[i].ok_deposit % 10000 == 0}">
										${Math.round(InfoOther[i].InfoOther[i]/10000)}억
									</c:when>	
									<c:when test="${InfoOther[i].ok_deposit >= 10000}">
										${Math.round(InfoOther[i].ok_deposit/10000)}억${InfoOther[i].ok_deposit % 10000}
									</c:when>
									<c:otherwise>
										${InfoOther[i].ok_deposit}
									</c:otherwise>										
								</c:choose>
							</h1>
							<p class="other_details_p2">${InfoOther[i].od_apply_floor}층, ${InfoOther[i].od_private_area}m², 관리비 ${InfoOther[i].ok_maintenance_cost }만</p>
							<p class="other_details_p2">입주가능일: ${InfoOther[i].od_occupy_date}</p>
							<div class="other_details_div1"></div>
						</div>
					</a>	
				</div>
			</li>
		</c:forEach>
	</ul>
</div>