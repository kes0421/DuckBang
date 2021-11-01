<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/assets/css/info/other.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main/recommend.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="other">
	<div>
	<div id="recommend_title"><b>서초동</b> 추천매물</div>
	<div id="recommend_subTitle">
		<div class="recommend_option">서초동</div>
		<div class="recommend_option">원룸,투 쓰리룸, 오피스텔</div>
		<div class="recommend_option">월세,전세</div>
		<div id="recommend_moreRoom">
			<a href="./map?room_kind=all">더 많은 방 보기 ></a>		
		</div>
	</div>
	</div>
	<ul>
		<c:forEach begin="0" end="3" var="i">
			<li class="other_li">
				<div>
					<div>
						<button class="other_like_btn"></button>
					</div>
					<a href="./info?o_id=${recommend[i].o_id }" class="other_a">
						<div class="other_img">
							<img src="${recommend[i].image_1}"/>
							<div class="other_img_1"></div>
						</div>
						<div class="other_details">
							<p class="other_details_p1">${recommend[i].od_room_kind}</p>
							<h1 class="other_details_h1">
								${recommend[i].ok_code}
								<c:choose>
									<c:when test="${recommend[i].ok_code eq '월세'}">
										${recommend[i].ok_deposit} / ${recommend[i].ok_month_of_payment}
									</c:when>
									<c:otherwise>
										${recommend[i].ok_deposit}
									</c:otherwise>							
								</c:choose>
							</h1>
							<p class="other_details_p2">${recommend[i].od_apply_floor}층, ${recommend[i].od_private_area}m², 관리비 ${recommend[i].ok_maintenance_cost }만</p>
							<p class="other_details_p2">입주가능일: ${recommend[i].od_occupy_date}</p>
							<div class="other_details_div1"></div>
						</div>
					</a>	
				</div>
			</li>
		</c:forEach>
	</ul>
	
</div>

<script>
	var interest_btn = new Array();
	var interest_btn_values = new Array();
	var user_cookie;
	
	var empty_heart_url = "url('https://key0.cc/images/preview/8885_36bca2e025fa01f4218f1951efc4372c.png')";
	var pull_heart_url = "url('https://png.pngtree.com/png-vector/20190228/ourlarge/pngtree-love-heart-icon-design-template-vector-isolated-png-image_707576.jpg')";
	
	const getCookie = function (name) { 
		var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)'); 
		return value ? decodeURIComponent(value[2]) : null; 
	};
	
	user_cookie = getCookie('user_id')
	var userDate = new Date();
	
	function add_interest(){
		if(user_cookie == null){
			location.href = "./login"
		}else{
			const xhttp = new XMLHttpRequest();
			
			const interest = {
					o_id : this.value,
					u_id : user_cookie,
					i_date : userDate
			};
			
			if(this.style.color == "white"){
				xhttp.open('POST','/room/interest', true);
				xhttp.setRequestHeader('content-type','application/json;charset=EUC-KR');
				xhttp.send(JSON.stringify(interest));
				
				xhttp.addEventListener('readystatechange', (e)=>{
					this.style.backgroundImage = "url('https://png.pngtree.com/png-vector/20190228/ourlarge/pngtree-love-heart-icon-design-template-vector-isolated-png-image_707576.jpg')";
					this.style.backgroundSize = "cover";
					this.style.color = "red";

				});
				
			}else{
				xhttp.open('POST','/room/deleteInterest', true);
				xhttp.setRequestHeader('content-type','application/json;charset=EUC-KR');
				xhttp.send(JSON.stringify(interest));
				
				xhttp.addEventListener('readystatechange', (e)=>{
					this.style.backgroundImage = "url('https://key0.cc/images/preview/8885_36bca2e025fa01f4218f1951efc4372c.png')";
					this.style.backgroundSize = "cover";
					this.style.color = "white";
				});
			}
		}
	}
					
	for(var i=0; i<=3; i++){
		interest_btn[i] = document.getElementsByClassName('other_like_btn')[i];
		interest_btn[i].addEventListener("click", add_interest);
	}

	var index = 0;
	<c:forEach items="${recommend}" var="recommend"> 
		if(index < 4){
			interest_btn[index].setAttribute("value", "${recommend.o_id}");
			interest_btn_values[index] = "${recommend.o_id}";
			interest_btn[index].style.backgroundImage = "url('https://key0.cc/images/preview/8885_36bca2e025fa01f4218f1951efc4372c.png')";
			interest_btn[index].style.backgroundSize = "cover";
			interest_btn[index].style.color = "white";
		}		
		index++;
	</c:forEach>
	
	if(user_cookie != null){
		<c:forEach items="${interest_list}" var="interest_list"> 
			for(var i=0; i< interest_btn.length; i++){
				if(interest_btn[i].value == "${interest_list.o_id}"){
					interest_btn[i].style.backgroundImage = "url('https://png.pngtree.com/png-vector/20190228/ourlarge/pngtree-love-heart-icon-design-template-vector-isolated-png-image_707576.jpg')";
					interest_btn[i].style.backgroundSize = "cover";
					interest_btn[i].style.color = "red";
				}
			}
		</c:forEach>
	}

</script>