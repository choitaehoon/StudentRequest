<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Insert title here</title>
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
</style>
</head>
<body>
<main>
	<section>
	<h1>퀴즈</h1>
	<hr>
	<h5><i class="fa fa-paper-plane"></i> <span style="color:blue"> ${ loginInfo.name } </span>님 안녕하세요</h5>
	<c:if test="${loginInfo.userType eq 1}">
	<a id="createButton" class="btn btn-primary pull-right" href="quizQuestion?id=${ loginInfo.id }&userType=${ loginInfo.userType }"> <i class="glyphicon glyphicon-plus"></i> 퀴즈 등록 </a>
	</c:if>
	<a id="createButton" class="btn btn-primary pull-right" href=""> <i class="glyphicon glyphicon-search"></i> 한눈에 보기 </a>
	<br/>
	<br/>
	<table>
		<tr style="vertical-align:top">
			<td style="padding-right:12px; border-right:1px solid black; text-align:justify">풀었던 문제</td>
			<td style="padding-left:10px">등록된 문제</td>
		</tr>
	</table>
	
	</section>
</main>
</body>
</html>