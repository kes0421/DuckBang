<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/abo/room.css" type="text/css" />
<div class="room">
	<div class="room_div1">
		<p class="room_div1_p1">
			이 부동산의 방
			<span>(수량)</span>
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
		<c:forEach begin="1" end="32">
			<li>
				<div class="room_ul1_div1">
					<div>
						<button class="room_like_btn">하트</button>
					</div>			
				</div>
				<a href="" class="room_ul1_a1">
					<div class="room_ul1_div2">
						<div class="room_ul1_div3">
							<img src="https://d1774jszgerdmk.cloudfront.net/512/60de8ddc-01c2-4008-b262-6373559d77d5">
						</div>
						<div class="room_ul1_div4"></div>
					</div>
					<div class="room_ul1_div5">
						<p class="room_ul1_p1">투룸</p>
						<h1 class="room_ul1_h1">전세 1억3000</h1>
						<p class="room_ul1_p2">3층, 52.75m², 관리비 3만</p>
						<p class="room_ul1_p2">강서구 화곡동  신축급깔끔한 2룸</p>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
	<!-- 버튼 리스트는 추후 DB만들면서 -->
</div>