<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/common/header.css">

<div id="header_area">
<!-- 
	<h3># header.jsp</h3>
-->

        <div id="navi_flex">
            <div id="header_area_logo">
            </div>
            <div>
                <ul id="header_area_top_menu">
                    <li>
                        <span>아파트 </span> <br>
                        <span id="header_area_small">매매/전월세/신축분양</span>
                        <div class="header_area_sub_menu">
                            <a class=" ">매매/전·월세</a><br>
                            <a class=" ">신축분양</a><br>
                            <a class=" ">인구흐름</a><br>
                        </div>
                    </li>
                    <li>
                        <span>빌라, 투룸</span><br>
                        <span id="header_area_small">신축분양/매매/전월세</span>
                        <div class="header_area_sub_menu">
                            <a class=" ">빌라, 투룸 찾기</a><br>
                            <a class=" ">찜한 매물</a><br>
                            <a class=" ">빌라 내놓기(전월세만)</a><br>
                        </div>
                    </li>
                    <li>
                        <span>원룸</span><br>
                        <span id="header_area_small">전월세</span>
                        <div class="header_area_sub_menu">
                            <a class=" ">방 찾기</a><br>
                            <a class=" ">찜한 매물</a><br>
                            <a class=" ">방 내놓기(전월세만)</a><br>
                        </div>
                    </li>
                    <li>
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
        </div>
        
	
	
</div>
<script src="${pageContext.request.contextPath }/resources/assets/js/header/header.js"></script>