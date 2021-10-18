<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/assets/css/login/index.css" type="text/css" />
</head>
<body>

	<div>
	    <!-- 상단 메뉴바 -->
	    <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	</div>
	
	<div class="login_container">
		<form class="login_form" action="">
			<h1>로그인</h1>
			<h2>다방 서비스 이용을 위해 로그인해주세요.</h2>
			<div class="login_form_id">
				<label class="login_form_label">
					<p class="login_form_text">아이디</p>
					<input class="login_form_input" autocomplete="off" type="text" name="email" placeholder="이메일 주소 입력" />
				</label>
			</div>
			<div class="login_form_pw">
				<label class="login_form_label">
					<p class="login_form_text">비밀번호</p>
					<input class="login_form_input" autocomplete="off" type="password" name="password" placeholder="비밀번호 입력" />
				</label>
			</div>
			<div class="login_form_idSaved">
				<label class="login_form_idSaved_label">
					<input type="checkbox" name="isSaved" class="login_form_idSaved_input"/>
					<p class="login_form_idSaved_text">아이디 저장</p>
				</label>
				<div class="login_form_membership">
					<p class="login_form_membership_text">회원가입</p>
					<span></span>
					<p class="login_form_membership_text">비밀번호 재설정</p>
				</div>
			</div>
			<button class="login_form_btn">
				<span>로그인</span>
			</button>
		</form>
	</div>
		
	<div>
	    <!-- 하단 상세정보 -->
	    <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	</div>
</body>
</html>