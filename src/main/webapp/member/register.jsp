<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />

<%
	request.setCharacterEncoding("UTF-8");
	String userid = "";
	String name = "";
	String password1;
	String password2;
	int grade=1;
	String email = "";
	int department;
	int userType;
	String 에러메시지 = null;

	if (request.getMethod().equals("POST")) {
		userid = request.getParameter("userid");
		name = request.getParameter("name");
		password1 = request.getParameter("password1");
		password2 = request.getParameter("password2");
		String s1 = request.getParameter("grade");
		grade = Integer.parseInt(s1);
		email = request.getParameter("email");
		String s2 = request.getParameter("department");
		department = Integer.parseInt(s2);
		String s3 = request.getParameter("userType");
		userType= Integer.parseInt(s3);
		
		if (userid == null || userid.length() == 0)
			에러메시지 = "사용자 아이디를 입력하세요";
		else if (name == null || name.length() == 0)
			에러메시지 = "이름을 입력하세요";
		else if (password1 == null || password1.length() == 0)
			에러메시지 = "비밀번호1을 입력하세요";
		else if (password2 == null || password2.length() == 0)
			에러메시지 = "비밀번호2를 입력하세요";
		else if (password1.equals(password2) == false)
			에러메시지 = "비밀번호 불일치";
		else if (email == null || email.length() == 0)
			에러메시지 = "이메일 주소를 입력하세요";
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        rel="stylesheet" media="screen">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<style type="text/css">
#center {
	position: absolute;
	top: 30%;
	left: 50%;
	width: 400px;
	height: 900px;
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
<title>register</title>
</head>

<body>
	<div id=center class="container main">
		<h1>회원가입</h1>
		<hr />
		
		<form:form method="post" modelAttribute="student">

			<div class="form-group">
				<label>사용자 아이디</label> 
				<form:input path="studentId"/>
			</div>
			
			<div class="form-group">
				<label>이름</label> 
				<form:input path="studentName"/>
			</div>
			
			<div class="form-group">
				<label>비밀번호1</label> 
				<form:input path="password"/>
			</div>
			
			<div class="form-group">
				<label>비밀번호2</label> 
				<form:input path="password"/>
			</div>
			
			<div class="form-group">
				<label>학년</label> 
				<input type="number" name="grade" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>이메일</label> <input type="email" class="form-control"
					name="email"  />
			</div>
			
			<div class="form-group">
				<label>학과</label> <select class="form-control" name="departmentId">
					<option value="1">소프트웨어공학과</option>
					<option value="2">컴퓨터공학과</option>
					<option value="3">정보통신공학과</option>
					<option value="4">글로컬IT공학과</option>
				</select>
			</div>
			<div class="form-group">
				<label>교수</label><input type="radio" name="userType" value="0" />
				<label>학생</label><input type="radio" name="userType" value="1" />
			</div>
			
			<button type="submit" class="btn btn-primary">
				<i class="glyphicon glyphicon-ok"></i> 회원가입
			</button>

			<a href="../login.jsp" class="btn btn-default"> <i
				class="glyphicon glyphicon-home"></i> 홈
			</a>

		</form:form>
		<hr />
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
	</div>
</body>
</html>