<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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

thead th {
	background-color: #eee;
}

tr:hover td {
	background-color: #ffe;
	cursor: pointer;
}

table.table {
	margin-top: 5px;
}

select[name=od] {
	margin-right: 20px;
}

</style>
</head>
<body>
<main>
<section>
<h1>${ lecture.className }</h1>
	<h5><i class="fa fa-paper-plane"></i> <span style="color:blue"> ${ loginInfo.name } </span>님 안녕하세요</h5>
	<h6><span style="color:#FFE05C">${professorName}교수님</span></h6>
</section>
</main>
</body>
</html>