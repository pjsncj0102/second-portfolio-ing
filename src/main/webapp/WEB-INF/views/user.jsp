<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://jquery.bassistance.de/validate/jquery.validate.js"></script>
<script
	src="http://jquery.bassistance.de/validate/additional-methods.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Join</title>
<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-4 jumbotron">
				<form id="myform">

					<table class="table table-bordered table-condensed csb-table">
						<colgroup>
							<col class="col-md-1">
							<col class="col-md-2">
						</colgroup>
						<thead>
							<tr>
								<th colspan="2" bgcolor="ffffff">회 원 가 입</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>아이디</th>
								<td><input class="form-control" type="text"
									placeholder="아이디를 입력하세요" name="userId" id="userId"></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input class="form-control" type="password"
									placeholder="패스워드를 입력하세요" name="password" id="password"></td>
							</tr>
							<tr>
								<th>비밀번호 확인</th>
								<td><input class="form-control" type="password"
									placeholder="패스워드를 입력하세요" name="rePassword" id="rePassword"></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input class="form-control" type="text"
									placeholder="이름을 입력하세요" name="userName" id="name"></td>
							</tr>
							<tr>
								<th>성별</th>
								<td><input type="radio" name="gender" value="Male" />남자 <input
									type="radio" name="gender" value="Female" />여자</td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td><select id="tel1">
										<option value="0">선택</option>
										<option value="02">서울 (02)</option>
										<option value="031">경기 (031)</option>
										<option value="032">인천 (032)</option>
										<option value="033">강원 (033)</option>
										<option value="041">충남 (041)</option>
										<option value="042">대전 (042)</option>
								</select> - <input type="text" id="tel2" size="4" maxlength=4> -
									<input type="text" id="tel3" size="4" maxlength=4>
							</tr>
							<tr>
								<th>핸드폰 번호</th>
								<td><select id='mobile1'>
										<option value="0">선택</option>
										<option value='010'>010</option>
										<option value='011'>011</option>
										<option value='016'>016</option>
										<option value='017'>017</option>
										<option value='018'>018</option>
										<option value='019'>019</option>
										<option value='070'>070</option>
								</select> - <input type=text size=5 id="mobile2" maxlength=4> - <input
									type=text size=5 id="mobile3" maxlength=4></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" id="email1" size="15"> @ <input
									type="text" id="email2" size="15" maxlength="25"></td>
							</tr>
							<tr>
								<th>주소</th> 
								<td><input class="form-control" type="text" 
 									placeholder="주소를 입력하세요" id="roughAddress"></td> 
 							</tr> 
							<tr> 
 								<th>상세 주소</th> 
 								<td><input class="form-control" type="text"
 									placeholder="나머지 주소를 입력하세요" id="detailAddress"></td> 
						</tr> 
							<!-- <tr>
							<th>주소</th>
							<td><input type="text" id="zip1" size="8" maxlength="3"> - <input  type="text" id="zip2" size="8" maxlength="3"> 
							<input type="button" value="우편번호찾기" onClick="openZipcode(this.form)"><br> 
								기본주소<input class="form-control" type="text" id="roughAddress" placeholder="주소를 입력하세요" size="25"><br>
								나머지주소<input class="form-control" type="text" id="detailAddress" placeholder="나머지주소를 입력하세요" size="25"></td></tr> -->
						</tbody>
					</table>
				</form>
				<button id="sendBt" class="btn btn-primary">가입</button>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<!--  <button id="goHome" type="button" class="btn btn-primary">Go Home</button>
                                        <h4 class="modal-title" id="myModalLabel">가입 완료</h4> -->
				</div>
				<div class="modal-body">회원 가입 완료</div>
				<div class="modal-footer">
					<a href="main" class="btn btn-primary">메인 으로</a>
				</div>
			</div>
		</div>
	</div>
	<!-- /.modal -->
	

	<script type="text/javascript">
		$(function() {
			$('#sendBt').prop('disabled', true);

			jQuery.validator.setDefaults({
				debug : true,
				success : "valid"
			});

			jQuery
					.extend(
							jQuery.validator.messages,
							{
								required : "This field is required.",
								remote : "Please fix this field.",
								email : "Please enter a valid email address.",
								url : "Please enter a valid URL.",
								date : "Please enter a valid date.",
								dateISO : "Please enter a valid date (ISO).",
								number : "Please enter a valid number.",
								digits : "Please enter only digits.",
								creditcard : "Please enter a valid credit card number.",
								equalTo : "비밀번호틀림!",
								accept : "Please enter a value with a valid extension.",
								maxlength : jQuery.validator
										.format("Please enter no more than {0} characters."),
								minlength : jQuery.validator
										.format("Please enter at least {0} characters."),
								rangelength : jQuery.validator
										.format("Please enter a value between {0} and {1} characters long."),
								range : jQuery.validator
										.format("Please enter a value between {0} and {1}."),
								max : jQuery.validator
										.format("Please enter a value less than or equal to {0}."),
								min : jQuery.validator
										.format("Please enter a value greater than or equal to {0}.")
							});

			$("#myform").validate({
				rules : {
					userId : "required",
					userName : "required",
					gender : "required",
					mobile1 : "required",
					mobile2 : "required",
					mobile3 : "required",
					tel1 : "required",
					tel2 : "required",
					tel3 : "required",
					email1 : "required",
					email2 : "required",
					roughAddress : "required",
					detailAddress : "required",
					password : "required",
					rePassword : {
						required : true,
						equalTo : "#password"
					}
				},
				success : function() {
					$('#sendBt').prop('disabled', false);
				}
			});

			$('#sendBt').on('click', function() {
				var datas = {
					userId : $('#userId').val(),
					passwd : $('#password').val(),
					name : $('#name').val(),
					gender : $('input:radio[name=gender]:checked').val(),
					mobile1 : $('#mobile1').val(),
					mobile2 : $('#mobile2').val(),
					mobile3 : $('#mobile3').val(),
					tel1 : $('#tel1').val(),
					tel2 : $('#tel2').val(),
					tel3 : $('#tel3').val(),
					email1 : $('#email1').val(),
					email2 : $('#email2').val(),
					phoneNumber : $('#phoneNumber').val(),
					roughAddress : $('#roughAddress').val(),
					detailAddress : $('#detailAddress').val()
				};
				$.ajax({
					datType : "json",
					type : "POST",
					url : "users",
					data : datas
				}).done(function(data) {
					$('#myModal').modal('show');
				});
			});
			$('#goHome').on('click', function() {
				location.href = "main";
			});
		});
	</script>
</body>
</html>