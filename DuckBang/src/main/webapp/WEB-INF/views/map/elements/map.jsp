<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value='/resources/assets/css/map/map.css'/>">
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;">
                    <input type="text" value="강남" id="keyword" size="25"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        <ul id="placesList" style="display: none"></ul>
        <div id="pagination" style="display: none"></div>
    </div>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab13418c5a34ab184ce32963b970c51d&libraries=services"></script>
<script src="<c:url value='/resources/assets/js/map/mainMap.js'/>"></script>