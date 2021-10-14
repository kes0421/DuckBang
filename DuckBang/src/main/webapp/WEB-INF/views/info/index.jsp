<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<div>
		<!-- 상단 메뉴바 -->
		<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	</div>
	<div>
		<!-- 의성 -->
		<div>
			<!-- 월세/전용면적/주거비 / 중개사무소/연락처보기 -->
			<jsp:include page="./elements/header.jsp"></jsp:include>
		</div>
		<div>
			<!-- 표(세부정보) -->
			<jsp:include page="./elements/info.jsp"></jsp:include>
		</div>
		<!-- 한나 -->
		<div>
			<!-- 이미지 -->
			<jsp:include page="./elements/gallary.jsp"></jsp:include>
		</div>
		<div>
			<!-- 집주인 메모(투표로 넣을지 정하기) -->
			<jsp:include page="./elements/memo.jsp"></jsp:include>
		</div>
		<div>
			<!-- 덕중 -->
			<div>
				<!-- 센터고정메뉴바 -->
				<jsp:include page="./elements/menubar.jsp"></jsp:include>	
			</div>
			<div>
				<!-- 평형정보 -->
				<jsp:include page="./elements/space.jsp"></jsp:include>
			</div>
			<div>
				<!-- 가격정보 -->
				<jsp:include page="./elements/price.jsp"></jsp:include>
			</div>
			<!-- 천혁 -->
			<div>
				<!-- 옵션 + 보안/안전시설 -->
				<jsp:include page="./elements/option.jsp"></jsp:include>
			</div>
			<div>
				<!-- 위치 및 주변시설 -->
				<jsp:include page="./elements/location.jsp"></jsp:include>
			</div>
			<div>
				<!-- 이 중개사무소의 다른방 -->
				<jsp:include page="./elements/other.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<div>
		<!-- 하단 메뉴바 -->
		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	</div>
</div>

</body>
</html>