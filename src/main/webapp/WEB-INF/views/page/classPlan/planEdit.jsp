<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp"%>

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

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<style type="text/css">
#center {
	position: absolute;
	top: 30%;
	left: 50%;
	width: 500px;
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
<title>edit</title>
</head>
<body>
	<main>
	<section>
		<div class="container">
			<h3>${ classPlan.className }</h3>
			<hr />

			<form:form method="post" modelAttribute="classPlan">
				<input type="hidden" name="id" value="${ loginInfo.id }">
				<input type="hidden" name="userType" value="${ loginInfo.userType }">
				<input type="hidden" name="classId" value="${ classPlan.classId }">
				
				<div class="form-group">
					<label>제목</label>
					<form:input path="title" class="form-control" />
				</div>

				<label>내용</label>
				<div class="form-group">
                   
					<textarea style="width: 400px" rows="10" cols="10" id="planBody"
						name="planBody"> ${classPlan.planBody}</textarea>
				</div>


				<div id="buttons">
					<button type="submit" class="btn btn-primary">
				   <i class="glyphicon glyphicon-ok"></i> 게시글수정</button>
					<a class="btn btn-default"
						href="planBody?planNo=${classPlan.planNo }&classId=${classId}&id=${loginInfo.id}&userType=${loginInfo.userType}">
						<i class="glyphicon glyphicon-list"></i> 목록으로
					</a>
				</div>
			</form:form>

		</div>
	</section>
	</main>
</body>

</html>