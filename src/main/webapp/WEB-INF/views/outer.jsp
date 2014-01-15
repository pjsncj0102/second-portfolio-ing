<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아우터</title>
</head>

<body>
	
	 <div class="col-xs-7 col-sm-2 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
          	<div id="categorySection">
          	</div>
<!--             <a href="coat" class="list-group-item">코트</a> -->
<!--             <a href="jacket" class="list-group-item">자켓</a> -->
<!--             <a href="padding" class="list-group-item">패딩</a> -->
          </div>
        </div><!--/span-->
        
        <script type="text/javascript">
		$(function(){
			var menuLoad = function(){
				$.getJSON('categories/1', function(json) {
					var categories = json.data;
					var page = '';
					for(var i = 0; i < categories.length; i++) {
						page += '<a href="'+categories[i].name.toLowerCase()+'" class="list-group-item">'+categories[i].name+'</a>';
					}
					$('#categorySection').html(page);
				});
			};
			menuLoad();
		});
		</script>
</body>
</html>