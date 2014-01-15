<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>인클루드</title>
</head>
<body>
	<div style="height:40px; background-color: cccccc" align="right">
		<sec:authorize access="isAuthenticated()">
		<form name="f" action='<c:url value="j_spring_security_check"/>' method="POST">
			<table>
					<tr>
			  			<td><a href="j_spring_security_logout" class="btn btn-danger" style="margin-top:5px;">로그아웃</a></td>
						<td><a id="cart" href="cart" class="btn btn-default">장바구니</a></td>
						<td><a href="myPage" class="btn btn-default">MY PAGE</a></td>
			      		<td><a href="userCenter"class="btn btn-default">고객센터</a></td>
					</tr>
				</table>
			</form>
			</sec:authorize>
		<sec:authorize access="!isAuthenticated()">
			<form name="f" action='<c:url value="j_spring_security_check"/>' method="POST">
				<table>
					<tr>
						<td><input type="text" id="userId"  placeholder="아이디" name="j_username"></td>
						<td><input type="password" id="password" placeholder="비밀번호" name="j_password"></td>
						<td><button id="login" type="submit" class="btn btn-primary">로그인</button></td>
						<td><a href="user" class="btn btn-default">회원가입</a></td>
						<!-- <td><a href="cart" class="btn btn-default">장바구니</a></td>
						<td><a href="myPage" class="btn btn-default">MY PAGE</a></td> -->
			      		<td><a href="userCenter" class="btn btn-default">고객센터</a></td>
					</tr>
				</table>
			</form>
		</sec:authorize>
	</div>
	
	<div align="center">
			<a href="main"><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTil9WFW0imzJzd9yAC1Hv6slpnavE5_4DcL3YxL92hBrFZtpRZ" width="350" height="200"></a>
	</div>
	

	 <div class="navbar-wrapper">
      <div class="container">
        <div class="navbar navbar-default" role="navigation">
          <div class="container">
            <!-- <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              </button>
              <a class="navbar-brand" href="#">Category</a>
            </div> -->
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">아우터 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="coat">코트</a></li>
                    <li><a href="jacket">자켓</a></li>
                    <li><a href="padding">패딩</a></li>
                  </ul>
                </li>
                  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">상의 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="knit">니트</a></li>
                    <li><a href="cadigan">가디건</a></li>
                    <li><a href="shirt">셔츠</a></li>
                  </ul>
                </li>
                   <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">하의<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="skinny">스키니</a></li>
                    <li><a href="slacks">슬랙스</a></li>
                    <li><a href="baggy">배기</a></li>
                  </ul>
                </li>
                   <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">신발 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="loafer">로퍼</a></li>
                    <li><a href="walker">워커</a></li>
                    <li><a href="sneakers">스니커즈</a></li>
                  </ul>
                </li>
                   <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">가방<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="backpack">백팩</a></li>
                    <li><a href="shoulder">숄더백</a></li>
                    <li><a href="clutch">클러치백</a></li>
                  </ul>
                </li>
                   <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">악세사리 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="ring">반지</a></li>
                    <li><a href="necklace">목걸이</a></li>
                    <li><a href="bangle">팔찌</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
          </div>
        </div>
      </div>
          
</body>
</html>