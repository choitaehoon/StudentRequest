
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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

body {
	font-family: 굴림체;
}

 input.form-control, select.form-control { width: 200px; }

</style>

<title>login</title>

</head>

<body>

	<div id=center class="container main">
		<H3>SKHU.DO.it</H3>
		<H1>Student Request</H1>
		<hr />
<!-- 		<h1>로그인</h1> -->

		<form method="post">
			<div class="form-group">
				<label>학번 </label>
			   <input type="text"  class="form-control" name="loginId" value="" />
		    </div>
			
			<div class="form-group">
				<label>비밀번호</label>
				<input type="password" class="form-control" name="password" />
	         </div>	
			<button type="submit" class="btn btn-primary">
				<i class="icon-ok icon-white"></i> 로그인
			</button>

			<button type="button" class="btn btn-default" onclick="location.href='member/paswrdFind'">
				<span class="icon-search"></span> 비밀번호 찾기
			</button>
				
			<button type="button" class="btn btn-default" onclick="location.href='member/register'">

					<i class="icon-user"></i>회원가입
			</button>
			                                                                                          
		</form>
                             