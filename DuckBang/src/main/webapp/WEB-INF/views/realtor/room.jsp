<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/assets/css/realtor/room.css" rel="stylesheet" type="text/css"/>
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
<header class="realtor_header">
	<form action=""></form>
	<div>
		<h1 class="realtor_title">방내놓기</h1>
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
										<input type="radio" name="room_kind" checked/>
										<p>원룸</p>
									</label>
								</li>
								<li>
									<label class="realtor_box_label">
										<input type="radio" name="room_kind"/>
										<p>투/쓰리룸</p>
									</label>
								</li>
								<li>
									<label class="realtor_box_label">
										<input type="radio" name="room_kind"/>
										<p>오피스텔</p>
									</label>
								</li>
								<li>
									<label class="realtor_box_label">
										<input type="radio" name="room_kind"/>
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
									<input id="location_x" type="text" readonly/>
									<p>longitude (경도)</p>
									<input id="location_y" type="text" readonly/>
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
								<button id="month_btn">월세</button>
								<button id="deposit_btn">전세</button>
								<button id="trading_btn">매매</button>
								<label class="realtor_short_lease">
									<input type="checkbox" />
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
									<input id="area_input1" class="realtor_area_input" type="text" onkeyup="areaChange(this);"/>
									<p class="realtor_area_p2">평</p>
									<input id="area_input2" class="realtor_area_input" type="text" placeholder="0" readonly/>
									<p class="realtor_area_p2">㎡</p>
								</div>
							</div>
						</td>
						<th rowspan="2">건물 층수</th>
						<td>
							<div class="realtor_floor">
								<p class="realtor_floor_p">건물 층수</p>
								<input class="realtor_area_input" type="text" />
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="realtor_area">
								<p class="realtor_area_p">전용 면적</p>
								<div class="realtor_area_div">
									<input id="area_input3" class="realtor_area_input" type="text" onkeyup="areaChange(this);"/>
									<p class="realtor_area_p2">평</p>
									<input id="area_input4" class="realtor_area_input" type="text"  placeholder="0" readonly/>
									<p class="realtor_area_p2">㎡</p>
								</div>
							</div>
						</td>
						<td>
							<div class="realtor_floor">
								<p class="realtor_floor_p">해당 층수</p>
								<input class="realtor_area_input" type="text" />
							</div>
						</td>
					</tr>
					<tr>
						<th>난방 종류</th>
						<td colspan="3">
							<div class="realtor_area">
								<select name="" class="realtor_heating">
									<option>난방 종류 선택</option>
									<option value="">중앙 난방</option>
									<option value="">개별 난방</option>
									<option value="">지역 난방</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th>입주 가능일</th>
						<td><input class="realtor_date" type="date" /></td>
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
								<input id="maintenance_fee" class="maintenance_input" placeholder="0"/>
								<p class="maintenance_p">만원</p>
								<div class="maintenance_div">
									<label class="maintenance_label">
										<input type="checkbox" onclick="maintenance(this);"/>
										<p>관리비 없음</p>
									</label>
								</div>
							</div>
						</td>
						<th>주차여부</th>
						<td>
							<div class="realtor_maintenance">
								<label class="maintenance_label">
									<input onclick="impossible(this);" id="parking_impossible" type="radio" name="check" checked />
									<p>불가능</p>
								</label>
								<label class="maintenance_label">
									<input onclick="possible(this);" id="parking_possible" type="radio" name="check"/>
									<p>가능</p>
								</label>
								<input id="parking_fee" type="text" class="option_parking_input" placeholder="0" readonly/>
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
									<input type="checkbox" value="induction"/>
									<p>인덕션</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="washingmachine"/>
									<p>세탁기</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="microwave" />
									<p>전자레인지</p>
								</label>								
							</div>					
						</td>			
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="refrigerator" />
									<p>냉장고</p>
								</label>								
							</div>					
						</td>	
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="aricon" />
									<p>에어컨</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="tv"  />
									<p>TV</p>
								</label>								
							</div>					
						</td>			
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="internet" />
									<p>인터넷</p>
								</label>								
							</div>		
						</td>
						</tr>	
						<tr>
							<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="closet"  />
									<p>옷장</p>
								</label>								
							</div>					
						</td>			
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="shoerack"  />
									<p>신발장</p>
								</label>								
							</div>					
						</td>						
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="interphone"  />
									<p>인터폰</p>
								</label>								
							</div>					
						</td>		
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="bed" />
									<p>침대</p>
								</label>								
							</div>					
						</td>	
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="doorlock"  />
									<p>도어락</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="builtin"  />
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
									<input type="checkbox" value="interphone"/>
									<p>인터폰</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="jointentrance"/>
									<p>공동현관</p>
								</label>								
							</div>					
						</td>
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="cctv"/>
									<p>CCTV</p>
								</label>								
							</div>					
						</td>			
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="cardkey"/>
									<p>카드키</p>
								</label>								
							</div>					
						</td>	
						<td class="realtor_option_td">
							<div class="realtor_option">
								<label class="maintenance_label">
									<input type="checkbox" value="securitywindow"/>
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
					<td><input class="imageInput" type="text" /></td>
				</tr>
				<tr>
					<th>2. Image</th>
					<td><input class="imageInput" type="text" /></td>
				</tr>
				<tr>
					<th>3. Image</th>
					<td><input class="imageInput" type="text" /></td>
				</tr>
				<tr>
					<th>4. Image</th>
					<td><input class="imageInput" type="text" /></td>
				</tr>
				<tr>
					<th>5. Image</th>
					<td><input class="imageInput" type="text" /></td>
				</tr>
			</table>
		</div>
		<div class="realtor_end">
			<label class="realtor_end_label">
				<input type="checkbox" />
				<p>매물관리규정을 확인하였으며, 입력한 정보는 실제 매물과 다름이 없습니다.</p>
			</label>
			<div class="realtor_end_div">
				<button class="realtor_cancel">취소</button>
				<button class="realtor_add">매물등록</button>
			</div>
		</div>
	</div>
</div>

<script src="${pageContext.request.contextPath }/resources/assets/js/realtor/room.js" charset="UTF-8"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCO1eRP2ExsPqAhGnAd2H6FO2Zo2dIefYE&callback=initMap&libraries=places&v=weekly&region=kr" async>
</script>
