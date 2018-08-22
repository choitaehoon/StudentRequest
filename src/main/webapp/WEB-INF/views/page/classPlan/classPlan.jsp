<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />


<html>
<head>
<script src="${R}res/common.js"></script>
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


    <h1>진도계획</h1>
	<h5><i class="fa fa-paper-plane"></i> <span style="color:blue"> ${ loginInfo.name } </span>님 안녕하세요</h5>
	<p>날짜
		<form action="classPlan" method="post">
		<input type="hidden" name="id" value="${ loginInfo.id }">
		<input type="hidden" name="userType" value="${ loginInfo.userType }">
		<input type="hidden" name="test" value="1">
		<input type="text" id="datepicker" name="datea"><input type="submit" value="확인">
		
		<c:if test="${test eq 1 }">
		<table class="table table-bordered table-condensed">
		<thead>
		  <tr>
		     <th>수업</th>
		     <th>교수님</th>
		    
	      </tr>
		</thead>
	
		<tbody>
		   <c:forEach var="lecture" items="${ lecture }">
		      <tr data-url="planBoard?classId=${lecture.classId}&id=${loginInfo.id}&userType=${loginInfo.userType}">
		       <td>${lecture.className }</td>
		       <td>${lecture.professorName }</td>
		       
		     </tr>
		  </c:forEach>
		</tbody>
		
		</table>
		</c:if>
		</form>
	
	 
</section>

</main>

</body>
</html>