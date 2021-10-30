<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/assets/css/realtor/room.css" rel="stylesheet" type="text/css"/>
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>

<form id="regist_form" action="./regist" method="POST" accept-charset="utf-8"></form>
<header class="realtor_header">
	<div>
		<h1 class="realtor_title">	방내놓기</h1>
		<ul class="realtor_title_ul">
			<li>
				<a class="realtor_title_active" href="">방내놓기</a>
			</li>
			<li>
				<a href="">내 방 관리</a>
			</li>
		</ul>
	</div>
</header>
<div class="realtor_container">
	<div>
		<div class="realtor_box">
			<h1>매물 종류</h1>
			<table>
				<colgroup>
					<col width="150px"/>
				</colgroup>
				<tbody>
					<tr>
						<th>종류 선택</th>
						<td class="realtor_box_td">
							<ul class="realtor_box_ul">
								<li>
									<label class="realtor_box_label">
										<input form="regist_form" type="radio" name="room_kind" value="원룸" checked/>
										<p>원룸</p>
									</label>
								</li>
								<li>
									<label class="realtor_box_label">
										<input form="regist_form" type="radio" name="room_kind" value="투룸" />
										<p>투/쓰리룸</p>
									</label>
								</li>
								<li>
									<label class="realtor_box_label">
										<input form="regist_form" type="radio" name="room_kind" value="오피스텔" />
										<p>오피스텔</p>
									</label>
								</li>
								<li>
									<label class="realtor_box_label">
										<input  form="regist_form"type="radio" name="room_kind" value="아파트" />
										<p>아파트</p>
									</label>
								</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="realtor_box">
			<h1>위치 정보</h1>
			<table>
				<colgroup>
					<col width="150px"/>
				</colgroup>
				<tbody>
					<tr>
						<th>주소</th>
						<td>
							<div class="realtor_address">
								<div class="realtor_address_1">
									<p>latitude (위도)</p>
									<input form="regist_form" id="location_x" type="text" name="l_xcordinate" readonly/>
									<p>longitude (경도)</p>
									<input form="regist_form" id="location_y" type="text" name="l_ycordinate" readonly/>
									<p id="address_p">주소:</p>
								</div>
								<div class="realtor_address_2">
									<div id="map"></div>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="realtor_box">
			<h1>거래 정보</h1>
			<table>
				<colgroup>
					<col width="150px"/>
				</colgroup>
				<tbody>
					<tr id="room_tr">
						<th id="room_th" rowspan="2">거래 종류</th>

						</tr>
						<tr>
							<td>
							<div class="realtor_ok_code">
								<input form="regist_form" id="ok_code_input" type="hidden" name="ok_code"/>
								<button onclick="okCodeBtn(this)" id="month_btn">월세</button>
								<button onclick="okCodeBtn(this)" id="deposit_btn">전세</button>
								<button onclick="okCodeBtn(this)" id="trading_btn">매매</button>
								<label class="realtor_short_lease">
									<input form="regist_form" name="od_short_lease" type="checkbox" />
									<p>단기가능</p>
								</label>
								<p class="realtor_ok_code_text">
									<i class='bx bxs-info-circle'></i>
									처음에 선택한 거래 종류가 우선노출됩니다. 예치금이 있는 경우 보증금 입력란에 필히 입력하세요.
								</p>
							</div>
						</td>
						</tr>
				</tbody>
			</table>
		</div>
		<div class="realtor_box">
			<h1>기본정보</h1>
			<table>
				<colgroup>
					<col width="150px"/>
				</colgroup>
				<tbody>
					<tr>
						<th rowspan="2">
							<p>건물 크기</p>
							<span>(1P = 3.3058㎡)</span>
						</th>
						<td>
							<div class="realtor_area">
								<p class="realtor_area_p">공급 면적</p>
								<div class="realtor_area_div">
									<input form="regist_form" id="area_input1" class="realtor_area_input" name="od_private_area2" type="text" onkeyup="areaChange(this);"/>
									<p class="realtor_area_p2">평</p>
									<input form="regist_form" id="area_input2" class="realtor_area_input" name="od_private_area" type="text" placeholder="0" readonly/>
									<p class="realtor_area_p2">㎡</p>
								</div>
							</div>
						</td>
						<th rowspan="2">건물 층수</th>
						<td>
							<div class="realtor_floor">
								<p class="realtor_floor_p">건물 층수</p>
								<input form="regist_form" class="realtor_area_input" type="text" name="od_whole_floor"/>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="realtor_area">
								<p class="realtor_area_p">전용 면적</p>
								<div class="realtor_area_div">
									<input form="regist_form" id="area_input3" class="realtor_area_input" type="text" onkeyup="areaChange(this);"/>
									<p class="realtor_area_p2">평</p>
									<input form="regist_form" id="area_input4" class="realtor_area_input" name="od_supply_area" type="text"  placeholder="0" readonly/>
									<p class="realtor_area_p2">㎡</p>
								</div>
							</div>
						</td>
						<td>
							<div class="realtor_floor">
								<p class="realtor_floor_p">해당 층수</p>
								<input form="regist_form" class="realtor_area_input" type="text" name="od_apply_floor"/>
							</div>
						</td>
					</tr>
					<tr>
						<th>난방 종류</th>
						<td>
							<div class="realtor_area">
								<select form="regist_form" name="od_heating_kind" class="realtor_heating">
									<option>난방 종류 선택</option>
									<option value="중앙난방">중앙난방</option>
									<option value="개별난방">개별난방</option>
									<option value="지역난방">지역난방</option>
								</select>
							</div>							
						</td>
						<th rowspan="2">방 수</th>
						<td>
							<div class="realtor_area">
								<p class="realtor_area_p">방 수</p>
								<div class="realtor_area_div">
									<input form="regist_form" id="area_input3" class="realtor_area_input" name="od_room_count" type="text"/>
									<p class="realtor_area_p2">개</p>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>건축 용도</th>
						<td>
							<div class="realtor_area">
								<select form="regist_form" name="od_construction_use" class="realtor_heating">
									<option>건축 용도 선택</option>
									<option value="주거시설">주거시설</option>
									<option value="업무시설">업무시설</option>
									<option value="공동주택">공동주택</option>
									<option value="단독주택">단독주택</option>
								</select>
							</div>							
						</td>	
						<td>
							<div class="realtor_area">
								<p class="realtor_area_p">욕실 수</p>
								<div class="realtor_area_div">
									<input form="regist_form" id="area_input3" class="realtor_area_input" name="od_bathroom_count" type="text"/>
									<p class="realtor_area_p2">개</p>
								</div>
							</div>
						</td>	
					</tr>
					<tr>
						<th>입주 가능일</th>
						<td><input form="regist_form" name="od_occupy_date" class="realtor_date" type="date" /></td>
					</tr>
				</tbody>
			</table>	
		</div>
		<div class="realtor_box">
			<h1>요금 정보</h1>
			<table>
				<colgroup>
					<col width="150px"/>
					<col width="450px"/>
					<col width="150px"/>
					<col width="430px"/>
				</colgroup>
				<tbody>
					<tr>
						<th>관리비</th>
						<td>
							<div class="realtor_maintenance">
								<input form="regist_form" id="maintenance_fee" name="ok_maintenance_cost" class="maintenance_input" placeholder="0"/>
								<p class="maintenance_p">만원</p>
								<div class="maintenance_div">
									<label class="maintenance_label">
										<input form="regist_form" type="checkbox" onclick="maintenance(this);"/>
										<p>관리비 없음</p>
									</label>
								</div>
							</div>
						</td>
						<th>주차여부</th>
						<td>
							<div class="realtor_maintenance">
								<label class="maintenance_label">
									<input form="regist_form" onclick="impossible(this);" id="parking_impossible" type="radio" name="check" checked />
									<p>불가능</p>
								</label>
								<label class="maintenance_label">
									<input form="regist_form" onclick="possible(this);" id="parking_possible" type="radio" name="check"/>
									<p>가능</p>
								</label>
								<input form="regist_form" id="parking_fee" type="text" class="option_parking_input" placeholder="0" name="ok_parking_fee" readonly/>
								<p class="option_parking_p">만원</p>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="realtor_box">
			<h1>옵션 정보</h1>
			<table>
				<tbody>
					<tr>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="0"/>
									<p>인덕션</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="1"/>
									<p>세탁기</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="2" />
									<p>전자레인지</p>
								</label>								
							</div>					
						</td>			
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="3" />
									<p>냉장고</p>
								</label>								
							</div>					
						</td>	
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="4" />
									<p>에어컨</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="5"  />
									<p>TV</p>
								</label>								
							</div>					
						</td>			
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="6" />
									<p>인터넷</p>
								</label>								
							</div>		
						</td>
						</tr>	
						<tr>
							<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="7"  />
									<p>옷장</p>
								</label>								
							</div>					
						</td>			
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="8"  />
									<p>신발장</p>
								</label>								
							</div>					
						</td>						
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="9"  />
									<p>인터폰</p>
								</label>								
							</div>					
						</td>		
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="10" />
									<p>침대</p>
								</label>								
							</div>					
						</td>	
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="11"  />
									<p>도어락</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="option" type="checkbox" value="12"  />
									<p>빌트인</p>
								</label>								
							</div>					
						</td>																											
						</tr>		
				</tbody>
			</table>
		</div>
			<div class="realtor_box">
			<h1>보안 정보</h1>
			<table>
				<tbody>
					<tr>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="security" type="checkbox" value="0"/>
									<p>인터폰</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="security" type="checkbox" value="1"/>
									<p>공동현관</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="security" type="checkbox" value="2"/>
									<p>CCTV</p>
								</label>								
							</div>					
						</td>			
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="security" type="checkbox" value="3"/>
									<p>카드키</p>
								</label>								
							</div>					
						</td>	
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input form="regist_form" name="security" type="checkbox" value="4"/>
									<p>방범창</p>
								</label>								
							</div>					
						</td>
						</tr>		
				</tbody>
			</table>
		</div>
		<div class="realtor_box">
			<h1>사진 등록</h1>
			<table class="imgTable">
				<tr>
					<th>1. Image</th>
					<td><input form="regist_form"class="imageInput" type="text" name="image_1"/></td>
				</tr>
				<tr>
					<th>2. Image</th>
					<td><input form="regist_form"class="imageInput" type="text" name="image_2"/></td>
				</tr>
				<tr>
					<th>3. Image</th>
					<td><input form="regist_form"class="imageInput" type="text" name="image_3"/></td>
				</tr>
				<tr>
					<th>4. Image</th>
					<td><input form="regist_form"class="imageInput" type="text" name="image_4"/></td>
				</tr>
				<tr>
					<th>5. Image</th>
					<td><input form="regist_form"class="imageInput" type="text" name="image_5"/></td>
				</tr>
			</table>
		</div>
		<div class="realtor_end">
			<label class="realtor_end_label">
				<input form="regist_form"type="checkbox" />
				<p>매물관리규정을 확인하였으며, 입력한 정보는 실제 매물과 다름이 없습니다.</p>
			</label>
			<div class="realtor_end_div">
				<button class="realtor_cancel">취소</button>
				<input form="regist_form" type="submit" class="realtor_add" value="매물등록"/>
			</div>
		</div>
	</div>
</div>

<!-- <script src="${pageContext.request.contextPath }/resources/assets/js/realtor/room.js" charset="UTF-8"></script> -->	

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO1eRP2ExsPqAhGnAd2H6FO2Zo2dIefYE&callback=initMap&libraries=places&v=weekly&region=kr" async>
</script>

<script>
function addMonthDiv() {
    const td = document.createElement('td');
    const month_div1 = document.createElement('div');
    month_div1.setAttribute('class', 'realtor_month_div');
    const month_div2 = document.createElement('div');
    month_div2.setAttribute('class','realtor_month_div2');
    const p1 = document.createElement('p');
    p1.setAttribute('class','realtor_month_p');
    p1.innerText = '월세';
    const input1 = document.createElement('input');
    input1.setAttribute('class','realtor_month_input');
    input1.setAttribute('placeholder','보증금');
    input1.setAttribute('form','regist_form');
    input1.setAttribute('name','ok_deposit');
    const p2 = document.createElement('p');
    p2.setAttribute('class','realtor_month_p2');
    p2.innerText = '/';
    const input2 = document.createElement('input');
    input2.setAttribute('class','realtor_month_input');
    input2.setAttribute('placeholder','월세');
    input2.setAttribute('form','regist_form');
    input2.setAttribute('name','ok_month_of_payment');
    const p3 = document.createElement('p');
    p3.setAttribute('class','realtor_month_p3');
    p3.innerText = '만원';
    const span = document.createElement('span');
    span.innerText = '(ex: 월세 1000만원/50만원)';
    const btn = document.createElement('button');
	btn.setAttribute('id','exitBtn');
    btn.innerText = 'x';
	btn.addEventListener('click',()=>{
		const room_th = document.getElementById('room_th');
		const room_tr = document.getElementById('room_tr');
		room_tr.removeChild(room_tr.lastChild);
		room_th.setAttribute('rowspan', 2);
		
	});

    p3.appendChild(span);
    month_div2.appendChild(p1);
    month_div2.appendChild(input1);
    month_div2.appendChild(p2);
    month_div2.appendChild(input2);
    month_div2.appendChild(p3);
    month_div2.appendChild(btn);
    month_div1.appendChild(month_div2);
    td.appendChild(month_div1);

	return td;
}

document.getElementById('month_btn').addEventListener('click', () => {
	const room_th = document.getElementById('room_th');
	const room_tr = document.getElementById('room_tr');
	var rowspan = parseInt(room_th.getAttribute('rowspan'));
	
	if(rowspan == 2){
		 room_th.setAttribute('rowspan', rowspan + 1);
    	 room_tr.appendChild(addMonthDiv());
	}else{
		room_tr.removeChild(room_tr.lastChild);
		room_tr.appendChild(addMonthDiv());
	}
    console.log(document.getElementById('month_btn').innerText);
        document.getElementById('ok_code_input').value = document.getElementById('month_btn').innerText;

});


function addDeposit(){
	const td = document.createElement('td');
    const deposit_div1 = document.createElement('div');
    deposit_div1.setAttribute('class','room_deposit_contain');
    const deposit_div2 = document.createElement('div');
    deposit_div2.setAttribute('class','room_deposit_div');
    const p1 = document.createElement('p');
    p1.setAttribute('class','room_deposit_p1');
    p1.innerText = '전세';
    const input = document.createElement('input');
    input.setAttribute('placeholder','전세');
    input.setAttribute('class','room_deposit_input');
    const input2 = document.createElement('input');
    input2.setAttribute('type', 'hidden');
    input2.setAttribute('value', '0');
    input.setAttribute('form','regist_form');
    input.setAttribute('name','ok_deposit');
    input2.setAttribute('form','regist_form');
    input2.setAttribute('name','ok_month_of_payment');
    const p2 = document.createElement('p');
    p2.setAttribute('class','room_deposit_p2');
    p2.innerText = '만원';
    const span = document.createElement('span');
    span.innerText = '(ex: 전세 2000만원)';
    const btn = document.createElement('button');
    btn.innerText = 'x';
	btn.addEventListener('click',()=>{
		const room_th = document.getElementById('room_th');
		const room_tr = document.getElementById('room_tr');
		room_tr.removeChild(room_tr.lastChild);
		room_th.setAttribute('rowspan', 2);
		
	});

    p2.appendChild(span);
    deposit_div2.appendChild(p1);
    deposit_div2.appendChild(input);
    deposit_div2.appendChild(input2);
    deposit_div2.appendChild(p2);
    deposit_div2.appendChild(btn);
    deposit_div1.appendChild(deposit_div2);
    td.appendChild(deposit_div1);

    return td;
}

document.getElementById('deposit_btn').addEventListener('click', () => {
    const room_th = document.getElementById('room_th');
	const room_tr = document.getElementById('room_tr');
    var rowspan = parseInt(room_th.getAttribute('rowspan'));

    if(rowspan == 2){
        room_th.setAttribute('rowspan', rowspan + 1);
        room_tr.appendChild(addDeposit());
    }else{
        room_tr.removeChild(room_tr.lastChild);
        room_tr.appendChild(addDeposit());
    }
    console.log(document.getElementById('deposit_btn').innerText);
    document.getElementById('ok_code_input').value = document.getElementById('deposit_btn').innerText;
});

function addTrading(){
	const td = document.createElement('td');
    const deposit_div1 = document.createElement('div');
    deposit_div1.setAttribute('class','room_deposit_contain');
    const deposit_div2 = document.createElement('div');
    deposit_div2.setAttribute('class','room_deposit_div');
    const p1 = document.createElement('p');
    p1.setAttribute('class','room_deposit_p1');
    p1.innerText = '매매';
    const input = document.createElement('input');
    input.setAttribute('placeholder','매매');
    input.setAttribute('class','room_deposit_input');
    const input2 = document.createElement('input');
    input2.setAttribute('type', 'hidden');
    input2.setAttribute('value', '0');
    input.setAttribute('form','regist_form');
    input.setAttribute('name','ok_deposit');
    input2.setAttribute('form','regist_form');
    input2.setAttribute('name','ok_month_of_payment');
    const p2 = document.createElement('p');
    p2.setAttribute('class','room_deposit_p2');
    p2.innerText = '만원';
    const span = document.createElement('span');
    span.innerText = '(ex: 매매 2000만원)';
    const btn = document.createElement('button');
    btn.innerText = 'x';
	btn.addEventListener('click',()=>{
		const room_th = document.getElementById('room_th');
		const room_tr = document.getElementById('room_tr');
		room_tr.removeChild(room_tr.lastChild);
		room_th.setAttribute('rowspan', 2);
		
	});

    p2.appendChild(span);
    deposit_div2.appendChild(p1);
    deposit_div2.appendChild(input);
    deposit_div2.appendChild(input2);
    deposit_div2.appendChild(p2);
    deposit_div2.appendChild(btn);
    deposit_div1.appendChild(deposit_div2);
    td.appendChild(deposit_div1);

    return td;
}

document.getElementById('trading_btn').addEventListener('click', () => {
    const room_th = document.getElementById('room_th');
	const room_tr = document.getElementById('room_tr');
    var rowspan = parseInt(room_th.getAttribute('rowspan'));

    if(rowspan == 2){
        room_th.setAttribute('rowspan', rowspan + 1);
        room_tr.appendChild(addTrading());
    }else{
        room_tr.removeChild(room_tr.lastChild);
        room_tr.appendChild(addTrading());
    }
    console.log( document.getElementById('trading_btn').innerText);
    document.getElementById('ok_code_input').value = document.getElementById('trading_btn').innerText;
});

function areaChange(e){
    if(e.getAttribute('id') == 'area_input1'){
        const input2 = document.getElementById('area_input2');
        input2.value = Math.round(e.value * 3.3058 * 100) / 100;	
    }else{
        const input4 = document.getElementById('area_input4');
        input4.value = Math.round(e.value * 3.3058 * 100) / 100;	
    }
}

function possible(e) {
	   const fee = document.getElementById('parking_fee');
	   fee.readOnly = false; 
	}
function impossible(e) {
    const fee = document.getElementById('parking_fee');
    fee.readOnly = true;
    fee.value = 0;
}

function maintenance(e){
    const input = document.getElementById('maintenance_fee');
    if(e.checked == true){
        input.value = 0;
        input.readOnly = true;
    }else{
        input.readOnly = false;
        input.value="";
    }
}

function initMap() {
	var markers = [];
    var infowindow = new google.maps.InfoWindow();
    var geocoder =  new google.maps.Geocoder();
	const map = new google.maps.Map(document.getElementById("map"), {
        center: {
           lat: 37.566826,
           lng: 126.9786567
        },
        zoom: 10,
        mapTypeControl: false,
        fullscreenControl: false,
        mapTypeId: "roadmap",
        options: {
           gestureHandling: 'greedy'
        }
     });
	
	map.addListener('click', (e) => {
        const input_x = document.getElementById('location_x');
        const input_y = document.getElementById('location_y');
        
        input_x.value = Math.round(e.latLng.lat() * 1000000) / 1000000;
        input_y.value = Math.round(e.latLng.lng() * 1000000) / 1000000;
        Marker(e.latLng);

        geocoder.geocode({'latLng' : e.latLng}, function(results, status) {
        	const p = document.getElementById('address_p');
        	
            if (status == google.maps.GeocoderStatus.OK)  {            
            if (results[1]){           
				p.innerText = results[1].formatted_address;                                                  
            }          
            }
            });
    });
	
	
	function Marker(location){
		clearOverlays();
		const marker = new google.maps.Marker({
            position: location,
            map: map
        });
		markers.push(marker);
        console.log(markers);
    }
	
	function clearOverlays(){
		for(var i=0; i<markers.length; i++){
			markers[i].setMap(null);
		}
		markers.length = 0;
		
	}
  }



</script>
