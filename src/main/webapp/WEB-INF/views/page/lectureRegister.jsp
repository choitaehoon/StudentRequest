<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>
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
	
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

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
				<label>수업이름</label>
				<input type="text"  class="form-control" name=""/>
			</div>
			
			<div class="form-group">
				<label>강의실번호</label> 
				<input type="text"  class="form-control" name=""/>
            </div>
			
			<div class="form-group">
				<label>강의 내용</label> 
				<textarea rows="10" cols="50" name="contents"></textarea>
            </div>
			
			<div class="form-group">
				<label>강의 날짜</label> 
				<input type="text" id="datepicker"><input type="button" value="확인">
            </div>
			
			<button type="submit" class="btn btn-primary">
				<i class="glyphicon glyphicon-ok"></i> 등록
			</button>

			<a href="main?id=${id}&userType=${userType}" class="btn btn-default"> <i
				class="glyphicon glyphicon-home"></i> 이전페이지
			</a>
		</form>


	</div>
</body>
</html>