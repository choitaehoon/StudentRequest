<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
#center {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 400px;
	overflow: hidden;
	margin-top: -200px;
	margin-left: -150px;
}

body 
{
	font-family: 굴림체;
}

 input.form-control, select.form-control { width: 270px; }

</style>

<title>login</title>

</head>

<body>
	<div id=center class="container main">
		<H3>SKHU.DO</H3>
		<H1>Student Request</H1>
		<hr />

		<form method="post" action="page/check">
			<div class="form-group">
				<label>교수</label> <input type="radio" name="userType" value="1" />
				<label>학생</label><input type="radio" name="userType" value="2" />
			</div>
			
			<div class="form-group">
				<label>아이디 </label>
			   <input type="text"  class="form-control" name="id" 
			   	placeholder="(학번 또는 교수아이디를 입력하세요)"/>
		    </div>
			
			<div class="form-group">
				<label>비밀번호</label>
				<input type="password" class="form-control" name="password" 
				placeholder="비밀번호를 입력해 주세요"/>
	         </div>	
	         
			<button type="submit" class="btn btn-primary">
				<i class="icon-ok icon-white"></i> 로그인
			</button>
<<<<<<< HEAD

=======
			
>>>>>>> c3d01d9cc78dadb339b75fd048116a2bafe125f0
			<button type="button" class="btn btn-default" onclick="location.href='member/paswrdFind'">
				<span class="icon-search"></span> 비밀번호 찾기
			</button>
			
			<button type="button" class="btn btn-default" onclick="location.href='member/register'">
					<i class="icon-user"></i>회원가입
			</button>
			
		</form>
		<hr/>
		
	</div>
</body>
</html>
