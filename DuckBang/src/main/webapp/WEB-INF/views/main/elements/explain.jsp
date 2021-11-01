<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main/explain.css" type="text/css" />

<div id="explain_container">
	<div class="explain_info_text"><p><blueT>강남역</blueT>은 어떤 동네일까요?</p></div>
	<div class="explain_info">
		<div id="info_slide" class="explain_info_slide">
			<div class="explain_info_slide_option-1">
				<p class="title">원룸 평균 매물가</p>
				<div class="explain_infoWrap">
					<div class="explain_priceWrap">
						<div class="explain_price">
							<p class="name" id="explain1_okCode">${explain_1.ok_code}</p>
							<p class="value" id="explain1_deposit"></p>
						</div>
						<div class="explain_price">
							<p class="name" id="explain2_okCode">${explain_2.ok_code}</p>
							<p class="value" id="explain2_deposit"></p>
						</div>
					</div>
					
					<p class="description">※ 전용면적 33㎡(10평)이하</p>
				</div>
			</div>
			<div class="explain_info_slide_option-1">
				<p class="title">투·쓰리룸 평균 매물가</p>
				<div class="explain_infoWrap">
					<div class="explain_priceWrap">
						<div class="explain_price">
							<p class="name" id="explain3_okCode">${explain_3.ok_code}</p>
							<p class="value" id="explain3_deposit"></p>
						</div>
						<div class="explain_price">
							<p class="name" id="explain4_okCode">${explain_4.ok_code}</p>
							<p class="value" id="explain4_deposit"></p>
						</div>
					</div>
					<p class="description">※ 전용면적 60㎡(18평)이하</p>
				</div>
			</div>
			<div class="explain_info_slide_option-1">
				<p class="title">오피스텔 평균 매물가</p>
				<div class="explain_infoWrap">
					<div class="explain_priceWrap">
						<div class="explain_price">
							<p class="name" id="explain5_okCode">${explain_5.ok_code}</p>
							<p class="value" id="explain5_deposit"></p>
						</div>
						<div class="explain_price">
							<p class="name" id="explain6_okCode">${explain_6.ok_code}</p>
							<p class="value" id="explain6_deposit"></p>
						</div>
					</div>
					<p class="description">※ 전용면적 33㎡(10평)이하</p>
				</div>
			</div>
			
		<div class="explain_info_slide_option-2">
			<p class="title">편의시설</p>
			<div class="explain_infoWrap">
			<div class="explain_icons">
				<div class= "explain_icon">
					<div class="explain_icon-1">
					</div>
					<p class="name">카페</p>
					<p class="value">72</p>
				</div>
				<div class= "explain_icon">
					<div class="explain_icon-2">
					</div>
					<p class="name">편의점</p>
					<p class="value">34</p>
				</div>
				<div class= "explain_icon">
					<div class="explain_icon-3">
					</div>
					<p class="name">수퍼마켓</p>
					<p class="value">16</p>
				</div>
				<div class= "explain_icon">
					<div class="explain_icon-4">
					</div>
					<p class="name">미용실</p>
					<p class="value">71</p>
				</div>
				<div class= "explain_icon">
					<div class="explain_icon-5">
					</div>
					<p class="name">세탁/빨래방</p>
					<p class="value">19</p>
				</div>	
				<div class= "explain_icon">
					<div class="explain_icon-6">
					</div>
					<p class="name">실내운동</p>
					<p class="value">0</p>
				</div>
			</div>	
		</div>
		</div>
		<div class="explain_info_slide_option-3">
				<p class="title">신대방동에서는</p>
				<p class="title_bold">원룸 상담이 가장 많아요</p>
			<div class="explain_infoWrap">
				<div class="explain_barWrap">
					<div class="explain_barWrap_content">
						<p>원룸</p>
						<div class="explain_bar-1"><div><p>56.2%</p></div></div>
					</div>
					<div class="explain_barWrap_content">
						<p>투쓰리룸</p>
						<div class="explain_bar-2"><div><p>40.6%</p></div></div>
					</div>
					<div class="explain_barWrap_content">
						<p>아파트</p>
						<div class="explain_bar-3"><div><p>20%</p></div></div>
					</div>
				</div>
			</div>
			<p class="description">※ 최근 7일간 문자/전화문의 수 기준</p>			
		</div>
		</div>
		<!-- next -->
		<svg id = "next_point" class="next" style="width: 50; height: 50; viewBox: 0 0 50 50;">
			<g fill="none"; fill-rule="evenodd">
				<path fill="#000" d="M0 0h50v50H0z"></path>
				<path stroke="#FFF" d="M22 16l9 9-9 9"></path>
			</g>
		</svg>
		<!-- prev -->
		<svg id = "prev_point" class="prev" style="width: 50; height: 50; viewBox: 0 0 50 50;">
			<g fill="none"; fill-rule="evenodd">
				<path fill="#000" d="M0 0h50v50H0z"></path>
				<path stroke="#FFF" d="M22 16l9 9-9 9"></path>
			</g>
		</svg>
	</div>
</div>

<script>
	const explain1_deposit = document.getElementById("explain1_deposit");
	const explain2_deposit = document.getElementById("explain2_deposit");
	const explain3_deposit = document.getElementById("explain3_deposit");
	const explain4_deposit = document.getElementById("explain4_deposit");
	const explain5_deposit = document.getElementById("explain5_deposit");
	const explain6_deposit = document.getElementById("explain6_deposit");
	
	var ok_code1 = '${explain_1.ok_code}';
	var ok_code2 = '${explain_2.ok_code}';
	var ok_code3 = '${explain_3.ok_code}';
	var ok_code4 = '${explain_4.ok_code}';
	var ok_code5 = '${explain_5.ok_code}';
	var ok_code6 = '${explain_6.ok_code}';
	
	var deposit1 = '${explain_1.ok_deposit}';
	var deposit2 = '${explain_2.ok_deposit}';
	var deposit3 = '${explain_3.ok_deposit}';
	var deposit4 = '${explain_4.ok_deposit}';
	var deposit5 = '${explain_5.ok_deposit}';
	var deposit6 = '${explain_6.ok_deposit}';
	
	var ok_month1 = '${explain_1.ok_month_of_payment}';
	var ok_month2 = '${explain_2.ok_month_of_payment}';
	var ok_month3 = '${explain_3.ok_month_of_payment}';
	var ok_month4 = '${explain_4.ok_month_of_payment}';
	var ok_month5 = '${explain_5.ok_month_of_payment}';
	var ok_month6 = '${explain_6.ok_month_of_payment}';
	
	var depositRest1 = parseInt(deposit1 / 10000);
	var depositRest2 = parseInt(deposit2 / 10000);
	var depositRest3 = parseInt(deposit3 / 10000);
	var depositRest4 = parseInt(deposit4 / 10000);
	var depositRest5 = parseInt(deposit5 / 10000);
	var depositRest6 = parseInt(deposit6 / 10000);
	
	function changeDeposit(deposit, depositRest, explain_deposit, ok_code, ok_month){
		if(depositRest !== 0){
			if((deposit % 10000) == 0) {
				deposit = depositRest +'억';
			}else {
				deposit = depositRest +'억' + (deposit % 10000).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
		}else {
			deposit = deposit.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		
		if(ok_code == '월세'){
			explain_deposit.innerText = deposit +'/' + ok_month;
		}else {
			explain_deposit.innerText = deposit;
		}
	}
	
	changeDeposit(deposit1, depositRest1, explain1_deposit, ok_code1, ok_month1);
	changeDeposit(deposit2, depositRest2, explain2_deposit, ok_code2, ok_month2);
	changeDeposit(deposit3, depositRest3, explain3_deposit, ok_code3, ok_month3);
	changeDeposit(deposit4, depositRest4, explain4_deposit, ok_code4, ok_month4);
	changeDeposit(deposit5, depositRest5, explain5_deposit, ok_code5, ok_month5);
	changeDeposit(deposit6, depositRest6, explain6_deposit, ok_code6, ok_month6);

</script>

<script type="text/javascript" src="./resources/assets/js/main/explain.js"></script>