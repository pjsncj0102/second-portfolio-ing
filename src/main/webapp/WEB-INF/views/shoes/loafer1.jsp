<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>신발</title>
</head>
<body>
<jsp:include page="includeView.jsp" flush="false"></jsp:include>

	<div class="container">
		<div class="page-header">
			<h1>스웨이드 윙팁</h1>
		</div>
	</div>
	<table>
		<tr>
			<div class="col-md-3">
				<td><img src="http://file.tlrke.cafe24.com/Product/Images/17/CBSELFAA0017942/list_l9203304252c1be9730f6a.jpg" width="300" height="400"></td>
				<td>판매가 48,000원</td>
			</div>
		</tr>
	</table>

	<table>
		<div class="col-md-5">
			<tr>
				<td>색상</td>
				<td><select name="color">
						<option value="">색상 선택</option>
						<option value="검정">검정</option>
						<option value="그레이">그레이</option>
						<option value="네이비">네이비</option>
				</select>
			</tr>
		</div>
	</table>

	<table>
		<div class="col-md-5">
			<tr>
				<td>사이즈</td>
				<td><select name="size">
						<option value="">사이즈 선택</option>
						<option value="small">S</option>
						<option value="medium">M</option>
						<option value="large">L</option>
				</select>
			</tr>

			<tr>
				<td>수량</td>
				<td><select name="size">
						<option value="one">1</option>
						<option value="two">2</option>
						<option value="tree">3</option>
						<option value="four">4</option>
						<option value="five">5</option>
						<option value="six">6</option>
						<option value="seven">7</option>
				</select>
			</tr>
		</div>
	</table><br>

	<table>
		<div class="col-md-5">
			<tr>
				<td><a href="payment" class="btn btn-primary">바로구매</a></td>
				<td><a href="myPage" class="btn btn-success">장바구니</a></td>
			</tr>
		</div>
	</table>

	<br>
	<br>

	<table border="1">
		<div class="col-md-5">
			<tr align="center">
			<tr>
				<td>size</td>
				<td>Free(95~100)</td>
			</tr>
			<tr>
				<td>어깨</td>
				<td>47cm</td>
			</tr>
			<tr>
				<td>가슴</td>
				<td>57cm</td>
			</tr>
			<tr>
				<td>소매</td>
				<td>64cm</td>
			</tr>
			<tr>
				<td>총장</td>
				<td>73cm</td>
			</tr>
		</div>
	</table>

	<br>
	<br>

	<div align="center">
		<img src="http://file.tlrke.cafe24.com/Product/Images/17/CBSELFAA0017942/list_l9203304252c1be9730f6a.jpg" width="400" height="400"><br>
		<br> <img src="http://file.tlrke.cafe24.com/Product/Images/17/CBSELFAA0017942/big_1500939628524929a9b8611.jpg" width="400" height="400"><br>
		<br> <img src="http://file.tlrke.cafe24.com/Product/Images/17/CBSELFAA0017942/detail_166096997650766cc91135c.jpg" width="400" height="400"><br>
		<br> <img src="http://file.tlrke.cafe24.com/Product/Images/17/CBSELFAA0017942/detail_166096997650766cc91135c.jpg" width="400" height="400"><br>
		<br> <img src="http://file.tlrke.cafe24.com/Product/Images/17/CBSELFAA0017942/Editor/126803272650766ca1dafe7.jpg" width="400" height="4000"><br>
		<br> <img src="http://file.tlrke.cafe24.com/2012/08/30/A/SH/Untitled-1_02.jpg" width="400" height="5000"><br>
		<br> <img src="http://file.tlrke.cafe24.com/2012/08/30/A/SH/Untitled-1_03.jpg" width="300" height="3000"><br>
		<br> <img src="http://file.tlrke.cafe24.com/2012/08/30/A/SH/Untitled-1_04.jpg" width="300" height="3000"><br>
		<br>
	</div>

	<div class="container">
		<div class="page-header">
			<h1>구매 후기</h1>
		</div>
	</div>
	
		<div class="container">
		<div class="page-header">
			<h1>상품관련문의</h1>
		</div>
	</div>
</body>
</html>


