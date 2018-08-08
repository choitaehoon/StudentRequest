<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="${R}res/common.js"></script>
<style>
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
	<main> <header></header>
	<section>

		<h1>오늘의 수업</h1>
		<h5>
			<i class="fa fa-paper-plane"></i> <span style="color: blue">
				${ loginInfo.name } </span>님 안녕하세요
		</h5>
		<p>날짜
		<form action="find" method="post">
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
		     <th>강의실번호</th>
		     <th>시작시간</th>
		     <th>끝나는시간</th>
	      </tr>
		</thead>
	
		<tbody>
		   <c:forEach var="lecture" items="${ lecture }">
		     <tr data-url="question?classId=${lecture.classId}&id=${loginInfo.id}&userType=${loginInfo.userType}">
		       <td>${lecture.className }</td>
		       <td>${lecture.professorName }</td>
		       <td>${lecture.roomId }</td>
		       <td>${lecture.startClass }</td>
		       <td>${lecture.endClass }</td>
		     </tr>
		  </c:forEach>
		</tbody>
		
		
		</table>
       </c:if>
		</form>
       <hr/>
		<p>만들게 된 배경</p>
		<p>1.교수님에게 질문을 하고 싶은데 사람들이 많고 부끄럽다는 이유로 질문하고 싶어도 많은 이들이 실제로 질문을 하기
			꺼려한다.이러한 문제점을 발견하고 많은 이들이 수업에 대한 질문을 함으로써 궁금한점을 물어볼 수 있게 되고 실력을 향상시켜
			학업에 도움이 되는 취지에 만들어 졌다.</p>
	</section>
	</main>
</body>
</html>
