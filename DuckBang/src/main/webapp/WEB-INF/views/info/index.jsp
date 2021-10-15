<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#menubar_area {
        border-top: 1px solid rgb(221, 221, 221);
        border-bottom: 1px solid rgb(221, 221, 221);
        padding-top: 10px;
        padding-bottom: 10px;
    }

    #content_area {
        width: 1200px;
        margin: 0px auto;
        padding-top: 80px;
        padding-bottom: 80px;
    }

    #price_area {
        padding-bottom: 100px;
    }

    #option_area {
        border-top: 1px solid rgb(221, 221, 221);
        align-items:center;
        padding-top: 80px;
        padding-bottom: 80px;
    }

    #security_area {
        border-top: 1px solid rgb(221, 221, 221);
        padding-top: 80px;
        padding-bottom: 80px;
    }
</style>
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
			<div id="menubar_area">
				<!-- 센터고정메뉴바 -->
				<jsp:include page="./elements/menubar.jsp"></jsp:include>	
			</div>
		<div id="content_area">
			<!-- 덕중 -->
			<div id="price_area">
				<!-- 가격정보 -->
				<jsp:include page="./elements/price.jsp"></jsp:include>
			</div>
			<!-- 천혁 -->
			<div id="option_area">
				<!-- 옵션 + 보안/안전시설 -->
				<jsp:include page="./elements/option.jsp"></jsp:include>
			</div>
			<div id="security_area">
				<!-- 위치 및 주변시설 -->
				<jsp:include page="./elements/security.jsp"></jsp:include>
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