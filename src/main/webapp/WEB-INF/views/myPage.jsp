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
    
<title>마이 페이지</title>
</head>
<body>
<jsp:include page="includeView.jsp" flush="false"></jsp:include>

      <!-- Begin page content -->
      <div class="container">
        <div class="page-header">
          <h1>마이 페이지</h1>
      </div>
    </div>

    <div id="footer">
      <div class="container"></div>    
      </div>
</body>
</html>