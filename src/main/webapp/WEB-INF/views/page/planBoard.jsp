<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>


 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<h5><i class="fa fa-paper-plane"></i> <span style="color:blue"> ${ loginInfo.name } </span>님 안녕하세요</h5>
	<h1><span style="color:#A85DFF">${professorName}교수님</span></h1>
	
	<p>
	<table class="table table-bordered table-condensed">
		<thead>
		<tr>
		<c:forEach var="lecture" items="${ lecture }">
		       <th>${lecture.className }</th>
		  </c:forEach>
		  </tr>
		</thead>
		
		<tbody>
		
		 </tbody>
	</table>
	</p>
	
	<h2>게시판 목록</h2>
<table style="border:1px solid #ccc">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">글번호</th>
            <th scope="col">수업이름</th>
            <th scope="col">교수님 이름</th>
            <th scope="col">수업날짜</th>
            
        </tr>
    </thead>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(classPlan) > 0}">
                <c:forEach items="${classPlan }" var="row">
                    <tr>
                        <td>${classPlan.planNo }</td>
                        <td>${classPlan.classId }</td>
                        <td>${classPlan.professorId }</td>
                        <td>${classPlan.classDate }</td>
                        
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
         
    </tbody>
</table>
	
</section>
</main>
</body>
</html>