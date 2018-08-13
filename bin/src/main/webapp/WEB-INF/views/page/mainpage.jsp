<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${R}res/common.js"></script>
<style type="text/css">
input[type="checkbox"]#menu_state {
  display: none;
}
input[type="checkbox"]:checked ~ nav {
  width: 250px;
}
input[type="checkbox"]:checked ~ nav label[for="menu_state"] i::before {
  content: "\f053";
}
input[type="checkbox"]:checked ~ nav ul {
  width: 100%;
}
input[type="checkbox"]:checked ~ nav ul li a i {
  border-right: 1px solid #2f343e;
}
input[type="checkbox"]:checked ~ nav ul li a span {
  opacity: 1;
  transition: opacity 0.25s ease-in-out;
}
input[type="checkbox"]:checked ~ main {
  left: 250px;
}
nav {
  position: fixed;
  z-index: 9;
  top: 0;
  left: 0;
  bottom: 0;
  background: #383e49;
  color: #9aa3a8;
  width: 50px;
  font-family: 'Montserrat', sans-serif;
  font-weight: lighter;
  transition: all 0.15s ease-in-out;
}
nav label[for="menu_state"] i {
  cursor: pointer;
  position: absolute;
  top: 50%;
  right: -8px;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  background: #fff;
  font-size: 10px;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 15px;
  width: 15px;
  border-radius: 50%;
  border: 1px solid #ddd;
  transition: width 0.15s ease-in-out;
  z-index: 1;
}
nav label[for="menu_state"] i::before {
  margin-top: 2px;
  content: "\f054";
}
nav label[for="menu_state"] i:hover {
  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
}
nav ul {
  overflow: hidden;
  display: block;
  width: 50px;
  list-style-type: none;
  padding: 0;
  margin: 0;
}
nav ul li {
  border: 1px solid #2f343e;
  position: relative;
}
nav ul li.unread:after {
  content: attr(data-content);
  position: absolute;
  top: 10px;
  left: -120px;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  color: #fff;
  background: #ef5952;
  font-size: 8px;
}
nav ul li:not(:last-child) {
  border-bottom: none;
}
nav ul li.active a {
  background: #4c515d;
  color: #fff;
}
nav ul li a {
  position: relative;
  display: block;
  white-space: nowrap;
  text-decoration: none;
  color: #9aa3a8;
  height: 50px;
  width: 100%;
  transition: all 0.15s ease-in-out;
}
nav ul li a:hover {
  background: #4c515d;
  color: #fff;
}
nav ul li a * {
  height: 100%;
  display: inline-block;
}
nav ul li a i {
  text-align: center;
  width: 50px;
  z-index: 999999;
}
nav ul li a i.fa {
  line-height: 50px;
}
nav ul li a span {
  padding-left: 25px;
  opacity: 0;
  line-height: 50px;
  transition: opacity 0.1s ease-in-out;
}
main {
  position: absolute;
  transition: all 0.15s ease-in-out;
  top: 0;
  left: 50px;
}
main header {
  position: absolute;
  z-index: -1;
  top: 0;
  left: 0;
  right: 0;
  height: 900px;
  background: url("http://www.blueb.co.kr/SRC2/_image/01.jpg");
  background-size: cover;
  background-position: 50% 50%;
  background-repeat: no-repeat;
}
main section {
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  background: #fff;
  padding: 25px;
  font-family: helvetica;
  font-weight: lighter;
  padding: 130px;
  margin: 75px 200px;
  transition: all 0.15s ease-in-out;
}
main section:hover {
  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
}
main section h1 {
  padding-top: 0;
  margin-top: 0;
  font-weight: lighter;
}

</style>
<script>
  $( function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      nextText:'다음 달',
      preText:'이전 달',
      dateFormat: "yy-mm-dd"
      
    });
  } );
  </script>
</head>

<body>
<input type="checkbox" id="menu_state" checked>
<nav>
	<label for="menu_state"><i class="fa"></i></label>
	<ul>
		<li data-content="5" class="active unread">
			<a href="test">
				<i class="fa fa-inbox"></i>
				<span>회원정보</span>
			</a>
		</li>
		<li>
			<a href="question?classId=0&id=${loginInfo.id}&userType=${loginInfo.userType}">
				<i class="fa fa-question-circle"></i>
				<span>질문페이지</span>
			</a>
		</li>
		<li>
			<a href="quiz?id=${ loginInfo.id }&userType=${loginInfo.userType}">
				<i class="fa fa-paper-plane"></i>
				<span>퀴즈페이지</span>
			</a>
		</li>
		<li>
			<a href="classPlan?id=${ loginInfo.id }&userType=${loginInfo.userType}">
				<i class="fa fa-pencil"></i>
				<span>진도페이지</span>
			</a>
		</li>
		
		<c:if test="${loginInfo.userType == 2 || userType == 2}">
		<li>
		<a href="javascript:void(window.open('http://sam.skhu.ac.kr/SSE/SSEA1/SSEA104', '_blank','width=#, height=#'))">
		
			<i class="fa fa-plus-square"></i>
			<span>강의계획서 조회</span>
			</a>
		</li>
		</c:if>
		
		<c:if test="${loginInfo.userType == 1 || userType == 1}">
		<li>
			<a href="lectureRegister?id=${ loginInfo.id }&userType=${loginInfo.userType}">
			<i class="fa fa-plus-square"></i>
			<span>수업등록</span>
			</a>
		</li>
		</c:if>
		
		<li data-content="2" class="unread">
			<a href="../login.jsp" onclick="return confirm('로그아웃 하시겠습니까?')">
				<i class="fa fa-sign-out"></i>
				<span>로그아웃</span>
			</a>
		</li>
		
	</ul>
</nav>

</body>
</html>
