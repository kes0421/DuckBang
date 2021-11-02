<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/like/profile.css" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons+outlined"
      rel="stylesheet">
<div class="profile_div1">
	<div class="profile_div2">
		<img src="https://dabang-prod-profile-image.s3.amazonaws.com/67b183a3ecf022bbe6630c47abc10463">
	</div>
	<div class="profile_div3">
		<span class="material-icons-outlined">
			info
		</span>
		<p>찜 목록 보기</p>
	</div>
	
	<p class="profile_p1">
	</p>
</div>

<script>
	profile_p1 = document.getElementsByClassName('profile_p1')[0];
	   
	const getCookie = function (name) { 
		var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)'); 
		return value ? decodeURIComponent(value[2]) : null; 
	};
   

	var user_cookie = getCookies("user_id");
	var index = (user_cookie.indexOf('@'))
	var user = user_cookie.substr(0,index);
	
	profile_p1.innerText = user;
	

</script>









