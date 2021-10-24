<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/common/header.css">

<div id="header_area">
<!-- 
	<h3># header.jsp</h3>
-->
		<form id="headerForm">
			<input id="headerInput" type="hidden" name="room_kind" />
		</form>
        <div id="navi_flex">
        	<a href="${pageContext.request.contextPath }/main" style="cursor: pointer;">
            	<div id="header_area_logo">
            	</div>
            </a>
            <div>
                <ul id="header_area_top_menu">
                    <li id="apart">
                        <span>아파트 </span> <br>
                        <span id="header_area_small">매매/전월세/신축분양</span>
                        <div class="header_area_sub_menu">
                            <a class=" ">매매/전·월세</a><br>
                            <a class=" ">신축분양</a><br>
                            <a class=" ">인구흐름</a><br>
                        </div>
                    </li>
                    <li id="tworoom">
                        <span>빌라, 투룸</span><br>
                        <span id="header_area_small">신축분양/매매/전월세</span>
                        <div class="header_area_sub_menu">
                            <a class=" ">빌라, 투룸 찾기</a><br>
                            <a class=" ">찜한 매물</a><br>
                            <a class=" ">빌라 내놓기(전월세만)</a><br>
                        </div>
                    </li>
                    <li id="oneroom">
                        <span>원룸</span><br>
                        <span id="header_area_small">전월세</span>
                        <div class="header_area_sub_menu">
                            <a class=" ">방 찾기</a><br>
                            <a class=" ">찜한 매물</a><br>
                            <a class=" ">방 내놓기(전월세만)</a><br>
                        </div>
                    </li>
                    <li id="officetel">
                        <span>오피스텔</span><br>
                        <span id="header_area_small">도시형생활주택/전월세</span>
                        <div class="header_area_sub_menu">
                            <a class=" ">오피스텔 찾기</a><br>
                            <a class=" ">찜한 매물</a><br>
                            <a class=" ">오피스텔 내놓기(전/월세만)</a><br>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="login_area">
            	<button type="button" class="login_btn" style="vertical-align: middle;">로그인 및 회원가입</button>
        	</div>
        	<div id="seller_join">
        		<p id="seller_join_inner" style="vertical-align: middle;">
        			중개사무소 가입 <br>
        			및 광고문의
        		</p>
        	</div>
        </div>
        
	
	
</div>
<script src="${pageContext.request.contextPath }/resources/assets/js/header/header.js"></script>
<script>
	const headerForm = document.getElementById('headerForm');
	const headerInput = document.getElementById('headerInput');
	Array.from(document.getElementsByTagName('li')).forEach((e) => {
		e.addEventListener('click', () => {
			if(e.getAttribute('id') == 'apart'){
				headerInput.value = 'apart';	
			}else if(e.getAttribute('id') == 'tworoom'){
				headerInput.value = 'towroom';
			}else if(e.getAttribute('id') == 'oneroom'){
				headerInput.value = 'oneroom';
			}else if(e.getAttribute('id') == 'officetel'){
				headerInput.value = 'officetel';
			}
			headerForm.action = './map';
			headerForm.method = 'GET';
			headerForm.submit();
		});
	});
</script>