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

<title>코트</title>
</head>
<body>
	<jsp:include page="includeView.jsp" flush="false"></jsp:include>
  <div class="container">
        <div class="page-header">
          <h1>코트</h1>
      </div>
       <a class="btn btn-default" href="coat1"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022670/list_l6689360552a6c6761d5a0.jpg"  width="250" height="250"><br>간지코트<br>78,000원</a>
       <a class="btn btn-default" href="coat2"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023251/list_l70606689852ce5ba2e96c8.jpg"  width="250" height="250"><br>원버튼 지퍼 코트<br>99,000원</a>
   	   <a class="btn btn-default" href="coat3" ><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023248/list_l39362561052ce6775d9bb3.jpg" width="250" height="250"><br>베이직 코트<br>140,000원</a>
       <a class="btn btn-default" href="coat4" ><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023244/list_l199025079152ce6520b99b6.jpg" width="250" height="250"><br>차이나 사각 체크 가오리 코트<br>120,000원</a>
       <a class="btn btn-default" href="coat5" ><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023231/list_l191025458952cd13d663dd0.jpg" width="250" height="250"><br>이중 카라 코트<br>145,000원</a>
    </div>
    
</body>
</html>