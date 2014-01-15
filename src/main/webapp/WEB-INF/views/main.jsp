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
    
<title>Main</title>
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
        
    <!--검색창  -->
     <form class="navbar-form navbar-right" role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
     	 <button id="searchBt" type="submit" class="btn btn-info">검색</button>
			<div id="searchSection"></div>      
      </div>
    </form>
    
   <!--  Carousel -->
   <div class="carousel slide" id="mainCarousel" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="mainCarousel" data-slide-to="0" class="active"></li>
    <li data-target="mainCarousel" data-slide-to="1"></li>
    <li data-target="mainCarousel" data-slide-to="2"></li>
  </ol>
    <div class="carousel-inner"  align="center">
        <div class="active item" >
            <img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022670/list_l6689360552a6c6761d5a0.jpg" width="350" height="400">
        </div>
        <div class="item">
            <img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023248/list_l39362561052ce6775d9bb3.jpg" width="350" height="400">
        </div>
        <div class="item">
            <img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023164/list_l75477429952c2826f6428d.jpg" width="350" height="400">
        </div>
    </div>
    <!-- <a class="left carousel-control" href="#mainCarousel" data-slide="prev"></a>
    <a class="right carousel-control" href="#mainCarousel" data-slide="next"></a> -->
</div><br>
	
	<!-- iframe -->
	<!-- <div align="center">
		<iframe src="http://www.style.co.kr/" width="1200" height="300"></iframe>
	</div> -->
          <!-- Begin page content -->
      <div class="container">
        <div class="page-header">
          <h1>Best Item</h1>
      </div>
      <div>
      	<table>
      		<tr>
      			<td>
        			 <a class="btn btn-default" href="coat1"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022670/list_l6689360552a6c6761d5a0.jpg" onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022670/big_924997186528c764b7ef77.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022670/list_l6689360552a6c6761d5a0.jpg"' width="250" height="350"><br>간지코트<br>78,000원</a>
        			 <a class="btn btn-default" href="coat2"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023251/list_l70606689852ce5ba2e96c8.jpg"  width="250" height="350"><br>원버튼 지퍼 코트<br>99,000원</a>
       				 <a class="btn btn-default" href="jacket1"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023164/list_l75477429952c2826f6428d.jpg"  onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023164/big_59710410352c282724bc77.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023164/list_l75477429952c2826f6428d.jpg"' width="250" height="350"><br>간지자켓<br>78,000원</a>
       				 <a class="btn btn-default" href="shirt1"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022462/list_l80706684352958468c4f92.jpg" onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022462/detail_5427793465270bd0a3f687.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022462/list_l80706684352958468c4f92.jpg"'width="250" height="350"><br>베이직 셔츠<br>25,000원</a>
       				 <a class="btn btn-default" href="shirt2"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023246/list_l147423002852ce66d0e2e34.jpg"  onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023246/detail_152089697752ce66d215ced.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023246/list_l147423002852ce66d0e2e34.jpg"' width="250" height="350"><br>에이트 기모 남방<br>35,000원</a>
       				 <a class="btn btn-default" href="walker3"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022623/list_l21213920485285e65ef0abd.jpg"   onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022623/big_17791163675285e6639bbf7.jpg"'  onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022623/list_l21213920485285e65ef0abd.jpg"' width="250" height="350"><br>리스트 오버 워커<br>48,000원</a>
       				 <a class="btn btn-default" href="jacket3"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023000/list_l210361828552b17cdb6c066.jpg"  onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023000/detail_156441982452b17cdccdafc.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023000/list_l210361828552b17cdb6c066.jpg"' width="250" height="350"><br>투버튼 홈스방 자켓<br>90,000원</a>
       				 <a class="btn btn-default" href="baggy2"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022416/list_l1046764401526a24224f69f.jpg"  onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022416/big_395102368526a24366804e.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022416/list_l1046764401526a24224f69f.jpg"' width="250" height="350"><br>트레이님 배기 팬츠<br>44,000원</a>
       				 <a class="btn btn-default" href="skinny4"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023045/list_l143385727552b409fe5e891.jpg"  onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023045/big_187582247852b40a00694ae.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023045/list_l143385727552b409fe5e891.jpg"' width="250" height="350"><br>크랙 워싱 슬림 스키니<br>54,000원</a>
       				 <a class="btn btn-default" href="cadigan4"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022666/list_l250885485528c74f9ceb8e.jpg"  onmouseover='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022666/big_1152409076528c74fe71fc3.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022666/list_l250885485528c74f9ceb8e.jpg"' width="250" height="350"><br>체크 가디건<br>65,000원</a>
      			</td>
      		</tr>
      	</table>
      </div>
    </div>
    
         <!-- Begin page content -->
      <div class="container">
        <div class="page-header">
          <h1>New Item</h1>
          </div>
          <div>
          <table>
          	<tr>
				<td>
				<a class="btn btn-default" href="coat3"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023248/list_l39362561052ce6775d9bb3.jpg" onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023248/detail_73583127152ce67782519a.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023248/list_l39362561052ce6775d9bb3.jpg"' width="250" height="350"><br>베이직 코트<br>120,000원</a>
				<a class="btn btn-default" href="coat4"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023244/list_l199025079152ce6520b99b6.jpg"  onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023244/detail_182075689352ce65234761d.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023244/list_l199025079152ce6520b99b6.jpg"' width="250" height="350"><br>차이나 사각 체크 가오리 코트<br>140,000원</a>
				<a class="btn btn-default" href="shirt3"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023166/list_l130906866052c2848ed7c54.jpg"  onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023166/big_116533854652c284919467a.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023166/list_l130906866052c2848ed7c54.jpg"' width="250" height="350"><br>간지셔츠<br>45,000원</a>
				<a class="btn btn-default" href="jacket2"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023154/list_l48616731552c13abd89a77.jpg"  onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023154/detail_23856075752c13abee1900.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023154/list_l48616731552c13abd89a77.jpg"' width="250" height="350"><br>배색 퀼딩 자켓<br>180,000원</a>
				<a class="btn btn-default" href="skinny2"><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023211/list_l203940489652ca6c01c616e.jpg"  onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023211/big_18196393352ca6c0433a3c.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023211/list_l203940489652ca6c01c616e.jpg"' width="250" height="350"><br>생지 데님 스키니<br>30,000원</a>
				<a class="btn btn-default" href="padding1"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022916/list_l214259385152aace29015f9.jpg"  onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022916/big_75290757452aace2aad40e.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022916/list_l214259385152aace29015f9.jpg"' width="250" height="350"><br>마이너 항공 패딩<br>133,000원</a>
				<a class="btn btn-default" href="slacks5"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022935/list_l119640423452aeee6e0f9b3.jpg" onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022935/big_125197428052aeee7264a24.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022935/list_l119640423452aeee6e0f9b3.jpg"'width="250" height="350"><br>메시더 윈터 슬랙스<br>38,000원</a>
				<a class="btn btn-default" href="sneakers1"><img src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022776/list_l1522471462529853ef8730c.jpg"  onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022776/big_1547956971529853f1a961a.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/22/00SELFAA0022776/list_l1522471462529853ef8730c.jpg"' width="250" height="350"><br>바로크 스터드 슬립온<br>48,000원</a>
				<a class="btn btn-default" href="knit2" ><img src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023250/list_l77878206852ce5a3ba19a0.jpg"  onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023250/big_48149677352ce5a3f5286e.jpg"' onmouseout='this.src="http://file.tlrke.cafe24.com/Product/Images/23/00SELFAA0023250/list_l77878206852ce5a3ba19a0.jpg"' width="250" height="350"><br>투포켓 니트<br>30,000원</a>
				</td>
          	</tr>
          </table>
      </div>
    </div>
    	
     <div class="container">
        <div class="page-header">	
		<ul class="nav nav-pills">
		  <li class="active"><a href="#">고객만족아이템</a></li>
		  <li><a href="#">시즌 아이템</a></li>
		  <li><a href="#">유니크 패션</a></li>
		</ul>
	   </div>
	</div>	
     
 	 <div class="col-xs-7 col-sm-2 sidebar-offcanvas" id="sidebar"> 
           <!-- <div class="list-group"> 
           	<div id="categorySection"> 
        	</div> -->   
          <!--    <a href="outer" class="list-group-item">Outer</a> 
           	 <a href="top" class="list-group-item">Top</a> 
             <a href="pants" class="list-group-item">Pants</a> 
             <a href="shoes" class="list-group-item">Shoes</a> 
           <a href="bag" class="list-group-item">Bag</a> 
           <a href="accessory" class="list-group-item">Accessory</a>  -->
         <!-- </div> --> 
   <!--    <table>
       	<tr>
      		<td><a href="user"class="btn btn-link">회원가입</a></td>
      	</tr> 
      	 <tr>
      		<td><a href="userCenter"class="btn btn-link">고객센터</a></td>
      	</tr> 
      	<tr>
      		<td><a href="cart"class="btn btn-link">장바구니</a></td>
      	</tr>
      	<tr>
      		<td><a href="myPage"class="btn btn-link">MY PAGE</a></td>
      	</tr> 
      </table> -->
          
      <footer>
        <p>Call Center</p>
      </footer>
      
      <footer>
        <p>010-6375-0420</p>
      </footer>
      
      <footer>
        <p>&copy; Company 2013</p>
      </footer>
        </div><!--/span-->
       </div>
       
       <div id="newsSection"></div>
        
        <script type="text/javascript">
			$(function(){
/* 							
				var showNews = function(){
					$.ajax({
						dataType : "json",
						type : "GET",
						url : "fashion/news"
					}).done(function(data){
						var news = data.news;
						console.log(news);
						var itemList = news.channel.item;
						
						var show = '<table class="table table-striped"">';
						for(var i=0; i < itemList.length; i++){
							show += '<tr>';
							show += '<td><a href="'+itemList[i].link+'">'+itemList[i].title+'</a></td>';
							show += '</tr>';
						}
						show += '</table>';
						$('#newsSection').html(show);
					});
				};
				
				showNews();
 */				
				var menuLoad = function(){
					$.getJSON('categories', function(json) {
						var categories = json.data;
						var page = '';
						for(var i = 0; i < categories.length; i++) {
							page += '<a href="'+categories[i].name.toLowerCase()+'" class="list-group-item">'+categories[i].name+'</a>';
						}
						$('#categorySection').html(page);
					});
				};
//	 			menuLoad();
		});
			/* Carousel */ 
			/*  $('.carousel').carousel({
				  interval: 1000
				});

		 	$('#mainCarousel').carousel({
                interval: false,
                touch: false
            });  */
            
		</script>
</body>
</html>
