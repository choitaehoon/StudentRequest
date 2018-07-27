<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style type="text/css">
#center {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 700px;
	overflow: hidden;
	margin-top: -200px;
	margin-left: -150px;
}

body {
	font-family: 굴림체;
}

input.form-control, select.form-control {
	width: 200px;
}
</style>
<title>password</title>
</head>
<body>
	<div id=center class="container main">
		<h1>비밀번호 찾기</h1>
		<hr />

		<form method="post">
			<div class="form-group">
				<label>교수</label> <input type="radio" name="userType" value="1" />
				<label>학생</label><input type="radio" name="userType" value="2" />
			</div>
		
			<div class="from-group">
				<label>사용자 아이디</label> <input type="text" class="form-control"
					name="id"  />
			</div>

			<div class="form-group">
				<label>이메일</label> <input type="email" class="form-control"
					name="email"  />
			</div>

			<button type="submit" class="btn btn-primary">
				<i class="glyphicon glyphicon-ok"></i> 찾기
			</button>
			
			<a href="login" class="btn btn-default">
            <i class="glyphicon glyphicon-home"></i> 홈 </a>
			
		</form>
		<hr />
		<c:if test="${loginInfo.userType != 0}">
			<span style="color:blue">비밀 번호는 ${loginInfo.password}</span>
		</c:if>
	</div>
</body>
</html>