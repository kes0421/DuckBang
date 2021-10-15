<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel = "stylesheet" href ="${pageContext.request.contextPath}/resources/assets/css/main/index.css">
</head>
<body>

<div>
	<!-- ��� �޴��� -->
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
</div>
<div>
	<div>
		<!-- �˻�â -->
		<jsp:include page="./elements/search.jsp"></jsp:include>
	</div>
	<div class = "index_base">
		<div>
		<div>
			<!-- ���ʵ� ��õ�Ź� -->
			<jsp:include page="./elements/recommend.jsp"></jsp:include>
		</div>
		<div>
			<!-- ���ʵ� �Ұ� -->
			<jsp:include page="./elements/explain.jsp"></jsp:include>
		</div>
		</div>
	</div>
</div>
<div>
	<!-- �ϴ� ������ -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</div>
</body>
</html>