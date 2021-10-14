<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="./resources/assets/css/common/footer.css" rel="stylesheet" type="text/css">
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"
    rel="stylesheet">
 <footer class="footer_footer">
    <div>
        <div class="footer_top">
            <nav class="bar">
                <ul class="list">
                    <li><a href="">회사소개</a></li>
                    <li><a href="">이용약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="">매물관리규정</a></li>
                </ul>
            </nav>
            <form id="form" action="" method="GET">
                <label>
                    <p class="search">매물번호 조회</p>
                    <input type="text" name="매물번호DB">
                </label>
                <button type="submit" id="search_btn">
                    <span class="material-icons-outlined">
                        search
                    </span>
                </button>
            </form>
            <button id="top_btn">
                <span class="material-icons-outlined">
                    arrow_drop_up
                </span>
                <p>TOP</p>
            </button>
        </div>
        <div class="content">
            <div class="info">
                <ul>
                    <li>(주)스테이션3</li>
                    <li>대표 : 한유순, 유형석</li>
                    <li>사업자 번호: 220-88-59156 통신판매업신고번호 : 제2013-서울 강남-02884호</li>
                    <li>주소 : 서울시 서초구 서초대로 301 동익 성봉빌딩 10층 (주)스테이션3</li>
                    <li></li>
                    <li>고객센터 : 02-1899-6840 (평일 10:00 ~ 18:30 주말, 공휴일 휴무)</li>
                    <li>팩스 : 02-554-9774 프로모션/사업 제휴문의 : biz@station3.co.kr 허위매물 신고 : clean@dabangapp.com</li>
                </ul>
                <div class="btns">
                    <a href="">자주묻는 질문</a>
                    <a href="">1:1문의</a>
                </div>
                <p>
                    Station3, Inc. All rights reserved.
                </p>
            </div>
            <div class="wrap">
                <div class="award">
                    <div class="award_img"></div>
                    <div>
                        <p>덕방, 2019년 한국서비스품질지수</p>
                        <p>부동산 중개 앱 1위 선정</p>
                    </div>
                </div>
                <div class="social">
                    <a href="">김의성</a>
                    <a href="">나지수</a>
                    <a href="">이한나</a>
                    <a href="">신은철</a>
                    <a href="">이덕중</a>
                    <a href="">박천혁</a>
                </div>
            </div>
        </div>
    </div>

</footer>
