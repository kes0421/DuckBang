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
		<!-- 상단 메뉴바 -->
		<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	</div>
	<div>
		<div>
			<jsp:include page="./elements/profile.jsp"></jsp:include>
		</div>
		<div>
			<jsp:include page="./elements/list.jsp"></jsp:include>
		</div>
		<div>
			<jsp:include page="./elements/room.jsp"></jsp:include>
		</div>
	</div>
	<div>
		<!-- 하단 메뉴바 -->
		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	</div>
</body>
</html>