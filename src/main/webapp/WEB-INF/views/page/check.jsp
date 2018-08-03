<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp" %>
</head>
<body>
<main>
	<header></header>
	<section>
		<h1>성공회대학교</h1> <h5><i class="fa fa-paper-plane"></i> <span style="color:blue"> ${ loginInfo.name } </span>님 안녕하세요</h5>
		<p>날짜
		<form action="find" method="post">
		<input type="hidden" name="id" value="${ loginInfo.id }">
		<input type="hidden" name="userType" value="${ loginInfo.userType }">
		<input type="text" id="datepicker" name="datea"><input type="submit" value="확인">
		</form>
		
		<p>만들게 된 배경</p>
		<p>1.교수님에게 질문을 하고 싶은데 사람들이 많고 부끄럽다는 이유로 질문하고 싶어도 많은 이들이 실제로 질문을 하기 꺼려한다.이러한 문제점을 발견하고 많은 이들이 수업에 대한 질문을 함으로써 궁금한점을 물어볼 수 있게 되고 실력을 향상시켜 학업에 도움이 되는 취지에 만들어 졌다.</p>
	</section>
</main>
</body>
</html>
