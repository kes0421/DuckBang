<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
	<!-- 상단 메뉴바 -->
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
</div>
<div>
	<div>
		<jsp:include page="./elements/map.jsp"></jsp:include>
	</div>
	<div>
		<jsp:include page="./elements/list.jsp"></jsp:include>
	</div>
</div>
</body>
</html>