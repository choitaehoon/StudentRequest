<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%
	request.setCharacterEncoding("UTF-8");
	String userid = "";
	String name;
	String password;
	String email = "";

	String 에러메시지 = null;

	if (request.getMethod().equals("POST")) {
		userid = request.getParameter("userid");
		name = request.getParameter("name");
		email = request.getParameter("email");

		if (userid == null || userid.length() == 0)
			에러메시지 = "사용자 아이디를 입력하세요";
		else if (email == null || email.length() == 0)
			에러메시지 = "이메일 주소를 입력하세요";
	}
%>
=======
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
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
<<<<<<< HEAD
			<div class="from-group">
				<label>사용자 아이디</label> <input type="text" class="form-control"
					name="userid" value="<%=userid%>" />
=======
			<div class="form-group">
				<label>교수</label> <input type="radio" name="userType" value="1" />
				<label>학생</label><input type="radio" name="userType" value="2" />
			</div>
		
			<div class="from-group">
				<label>사용자 아이디</label> <input type="text" class="form-control"
					name="id"  />
>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
			</div>

			<div class="form-group">
				<label>이메일</label> <input type="email" class="form-control"
<<<<<<< HEAD
					name="email" value="<%=email%>" />
=======
					name="email"  />
>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
			</div>

			<button type="submit" class="btn btn-primary">
				<i class="glyphicon glyphicon-ok"></i> 찾기
			</button>
			
<<<<<<< HEAD
			<a href="../login.jsp" class="btn btn-default">
=======
			<a href="login" class="btn btn-default">
>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
            <i class="glyphicon glyphicon-home"></i> 홈 </a>
			
		</form>
		<hr />
<<<<<<< HEAD
		<%
			if (에러메시지 != null) {
		%>
		<div class="alert alert-danger">
			로그인 실패:
			<%=에러메시지%>
		</div>
		<%
			}
		%>

=======
		<c:if test="${loginInfo.userType != 0}">
			<span style="color:blue">비밀 번호는 ${loginInfo.password}</span>
		</c:if>
>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
	</div>
</body>
</html>