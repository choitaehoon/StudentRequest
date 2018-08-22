<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/classPlan/classPlan.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        rel="stylesheet" media="screen">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

<script>
  	$(function() { 
		$("div.pagination a").click(function() { 
  			$("input[name=pg]").val($(this).attr("data-page")); 
//   			$('#loginId').val(); 
  			$("form").submit(); 
  		});
  	}); 
</script> 
</head>
<body>
	<main>
	<section>
	   <form method="get">
	   <div>
		<h1>진도 계획 리스트</h1>
		<h5>
			<i class="fa fa-paper-plane"></i> <span style="color: blue">
				${ loginInfo.name } </span>님 안녕하세요
		</h5>
		</div>
		<div >
          <a href="planRegist?classId=${classId }&id=${ loginInfo.id }&userType=${loginInfo.userType}" class="btn btn-info">
           <span class="glyphicon glyphicon-user"></span> 게시물 등록</a>
         </div>

		<table style="border: 1px solid #ccc">
			<colgroup>
				<col width="10%" />
				<col width="*" />
				<col width="15%" />
				<col width="20%" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">제목</th>
					<th scope="col">수업이름</th>
					<th scope="col">교수님 이름</th>
					<th scope="col">작성일자</th>

				</tr>
			</thead>
			<tbody>

				<c:forEach var="classPlan" items="${ classPlan }">
					<tr data-url="planBody?pg=${pagination.currentPage}&planNo=${classPlan.planNo}&classId=${classPlan.classId}&id=${loginInfo.id}&userType=${loginInfo.userType}">

					    <td>${ classPlan.planNo }</td>
					    <td>${ classPlan.title }</td>
						<td>${ classPlan.className}</td>
						<td>${ classPlan.professorName }</td>
						<td>${ classPlan.classDate }</td>
					</tr>
				</c:forEach>


			</tbody>
		</table>
		
        <input type="hidden" name="pg" value="1" />
        <input type="hidden" name="classId" value="${classId }" />
		<input type="hidden" name="id" id="id" value="${loginInfo.id}">
		<input type="hidden" name="userType" id="userType" value="${loginInfo.userType}">

			<div class="pagination pagination-small pagination-centered">
			
					<c:forEach var="page" items="${ pagination.pageList }">
						<li class='${ page.cssClass }'><a
							data-page="${ page.number }">${ page.label }</a></li>
					</c:forEach>
				
			</div>
			<div>
			<a href="classPlan?id=${loginInfo.id}&userType=${loginInfo.userType}" class="btn btn-default"> <i
				class="glyphicon glyphicon-list"></i> 이전페이지</a>
			</div>
       </form>
	</section>
	</main>
</body>
</html>