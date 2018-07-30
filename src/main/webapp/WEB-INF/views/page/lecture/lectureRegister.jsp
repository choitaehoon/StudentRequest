<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="R" value="/" />

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
#center 
{
	position: absolute;
	top: 30%;
	left: 50%;
	width: 400px;
	height: 900px;
	overflow: hidden;
	margin-top: -200px;
	margin-left: -150px;
}

body 
{
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
		<h1>수업등록</h1>
		<hr />
		<form method="post">


			<div class="form-group">
				<label>수업번호</label>
				<input type="text"  class="form-control" name="classId"/>
			</div>
			
			<div class="form-group">
				<label>수업이름</label>
				<input type="text"  class="form-control" />
			</div>
			

			<div class="form-group">
				<label>강의계획서</label>
				<input type="text"  class="form-control" name=""/>
			</div>


			<div class="form-group">
				<label>강의실번호</label> 
				<input type="text"  class="form-control" name=""/>
            </div>
			
			<button type="submit" class="btn btn-primary">
				<i class="glyphicon glyphicon-ok"></i> 등록
			</button>

			<a href="../check" class="btn btn-default"> <i
				class="glyphicon glyphicon-home"></i> 이전페이지
			</a>

		</form>


	</div>
</body>
</html>