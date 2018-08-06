<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        rel="stylesheet" media="screen">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="${R}res/common.js"></script>
  <link rel="stylesheet" href="${R}res/common.css">
<style>
      body { font-family: 굴림체; }
      thead th { background-color: #eee; }
      tr:hover td { background-color: #ffe; cursor: pointer; }
      table.table { margin-top: 5px; }
      select[name=od] { margin-right: 20px; }
  </style>
</head>
<body>
<main>
	<header></header>
	<section>
	
		<h1>오늘의 수업</h1> <h5><i class="fa fa-paper-plane"></i> <span style="color:blue"> ${ loginInfo.name } </span>님 안녕하세요</h5>
		<p>날짜: 
		<input type="text" id="datepicker"><input type="button" value="확인"></p>
		<p>수업</p>
		<table class="table table-bordered table-condensed">
		<thead>
		  <tr>
		     <th>수업</th>
		     <th>교수님</th>
		     <th>강의실번호</th>
	      </tr>
		</thead>
		<tbody>
		   <c:forEach var="lecture" items="${ lecture }">
		 <tr>
		  <td>${lecture.className }</td>
		  <td>${lecture.professorName }</td>
		  <td>${lecture.roomId }</td>
		 
		 </tr>
		</c:forEach>
		</tbody>
		</table>
		
		
		
		<p>만들게 된 배경</p>
		<p>1.교수님에게 질문을 하고 싶은데 사람들이 많고 부끄럽다는 이유로 질문하고 싶어도 많은 이들이 실제로 질문을 하기 꺼려한다.이러한 문제점을 발견하고 많은 이들이 수업에 대한 질문을 함으로써 궁금한점을 물어볼 수 있게 되고 실력을 향상시켜 학업에 도움이 되는 취지에 만들어 졌다.</p>
		<p>Sed lacinia, ligula id venenatis auctor, libero turpis aliquet nunc, sit amet ullamcorper dolor ligula quis felis. Vivamus condimentum mi vel felis vehicula, eu placerat lacus semper. Sed quis lacinia mauris. Donec aliquam vulputate metus, non imperdiet lorem maximus a. Integer eget dignissim erat. Proin id finibus dui, pretium consectetur turpis. Vivamus in tincidunt odio, eu iaculis nisi. Integer in scelerisque mauris. Vivamus ac eros congue, mattis nisl ac, venenatis lacus.</p>
		<p>Nunc viverra vestibulum tempor. Nulla consectetur sit amet mauris at rutrum. Mauris eu rhoncus eros. Integer convallis magna ac tincidunt laoreet. Proin molestie vitae erat id venenatis. Donec eu imperdiet risus. Fusce gravida placerat dui eget sollicitudin. Cras leo ligula, laoreet dapibus euismod ut, vehicula sit amet nunc. Maecenas in nisl fringilla, aliquet diam ut, facilisis ex. In dui risus, porttitor convallis ultricies nec, ornare eu leo.</p>
	</section>
</main>
</body>
</html>
