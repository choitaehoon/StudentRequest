<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>​
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
.main_left_btn 
{
width:50%;
height:auto;
float:left;
}


.main_right_btn 
{
width:50%;
height:280px;
float:left;
}

</style>

<script>
	$(function() {
		$("div.pagination a").click(function() {
			$("input[name=pg]").val($(this).attr("data-page"));
//  			$('#loginId').val();
			$("form").submit();
		});
	});
</script>
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
	<a id="createButton" class="btn btn-primary pull-right" href="chart?id=${ loginInfo.id }&userType=${ loginInfo.userType }"> <i class="glyphicon glyphicon-search"></i> 한눈에 보기 </a>
	<br/>
	<br/>
<!-- 	<table> -->
<!-- 		<tr style="vertical-align:top"> -->
<!-- 			<td style="padding-right:12px; border-right:1px solid black; text-align:justify">풀었던 문제</td> -->
<!-- 			<td style="padding-left:10px">등록된 문제</td> -->
<!-- 		</tr> -->
<!-- 	</table> -->

	<div class="main_left_btn" style="border-right:1px solid black;">
		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>${sum}</th>
					<th>풀었던 번호</th>
					<th>퀴즈 내용</th>
					<th>퀴즈 본 날짜</th>
					<th>참여 수</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="quiz" items="${quiz}">
					<tr data-url="">
						<td>${quiz.quizId}</td>
						<td>${quiz.quizBody }</td>
						<td><fmt:formatDate value="${quiz.quizDate}" pattern="yyyy-MM-dd"/>​</td>
						<td>${quiz.join}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<form>
		<input type="hidden" name="pg" value="1" />
		<input type="hidden" name="id" id="id" value="${loginInfo.id}">
		<input type="hidden" name="userType" id="userType" value="${loginInfo.userType}">
			<div class="pagination pagination-small pagination-centered">
					<c:forEach var="page" items="${ pagination.pageList }">
						<li class='${ page.cssClass }'><a
							data-page="${ page.number }">${ page.label }</a></li>
					</c:forEach>
			</div>
		</form>
	</div>
	
	
	<div class="main_right_btn">
		등록된 문제
		<hr/>
	</div>
	
	
	</section>
</main>
</body>
</html>