<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/info/price.css">
<div id="price_content">
	<h1 id="room_payment_h1">가격정보</h1>
	<table id="payment_table">
		<colgroup>
			<col width="35%">
			<col width="35%">
			<col width="15%">
			<col width="15%">
		</colgroup>
		<thead>
			<tr>
				<th>월세</th>
				<th>관리비</th>
				<th>주차비</th>
				<th>단기임대</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><p>160/160</p></td>
				<td id="special">
					<div>
						<p>매월 10만 원</p>
						<p>
							<span>(인터넷, 유선 TV)</span>
						</p>
					</div>
					<div>
						<p>별도 금액으로 부과</p>
						<p>
							<span>(전기료, 수도료, 가스사용료)</span>
						</p>
					</div>
				</td>
				<td>
					<p>가능(무료)</p>
				</td>
				<td>
					<p>가능</p>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<div id="price_month">
	<div id="inner">
		<p>한달 예상 주거비용</p>
		<div id="payment">
			<div>
				1,000만원
				<span>
					(월세+관리비+주차비)
				</span>
			</div>
			<div id="payment2">
				별도 금액으로 부과되는 항목은 제외됩니다.
			</div>
		</div>
	</div>
</div>
	