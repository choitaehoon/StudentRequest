<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<style type="text/css">
#center 
{
	position: absolute;
	top: 30%;
	left: 50%;
	width: 400px;
	height: 900px;
	overflow: hidden;
	margin-top: -200px;
	margin-left: -150px;
}

body 
{
	font-family: 굴림체;
}

input.form-control, select.form-control {
	width: 200px;
}
</style>

<script>
function checkId(){
    var id = $('#id').val();
    var userType = $("input[name='userType']:checked").val();
    $.ajax({
        url:'identify',
        type:'post',
        data:{id:id,userType:userType},
        success:function(data){
            if(data == 0){
               alert("사용할 수 있습니다");               
            }else{
               alert("사용할 수 없습니다");
            }
        },
        error:function(){
                alert("에러입니다");
        }
    });
};

</script>
 
<title>register</title>
</head>

<body>
	<div id=center class="container main">
		<h1>회원가입</h1>
		<hr />
		<form:form method="post" modelAttribute="student">

			<div class="form-group">
<<<<<<< HEAD
=======
				<label>교수</label> <input type="radio" name="userType" value="0" />
				<label>학생</label><input type="radio" name="userType" value="1" />
			</div>
			

			<div class="form-group">
>>>>>>> 로그인 구현 완료했고 민섭이하고 한 작업 합치면 로그인 완성
				<label>사용자 아이디</label>
				<form:input type="text" path="id"  class="form-control" name="id"/>
				<input type="button" value="아이디중복체크" onclick="checkId();"></input>
			</div>
			
			<div class="form-group">
				<label>이름</label>
				<form:input type="text" path="name" class="form-control" />
			</div>
			
			<div class="form-group">
				<label>비밀번호</label>
				<form:input type="password" path="password" class="form-control" />
			</div>

			<div class="form-group">
				<label>학년</label>
				<form:input type="number" path="grade" class="form-control" />
			</div>

			<div class="form-group">
				<label>이메일</label>
				<form:input type="email" class="form-control" path="email" />
			</div>

			<div class="form-group">
				<label>학과</label> 
				<form:select path="departmentId" class="form-control"
                   itemValue="departmentId" itemLabel="departmentName" items="${ departments }" />
            </div>
			
<<<<<<< HEAD
			<div class="form-group">
				<label>교수</label> <input type="radio" name="userType" value="0" />
				<label>학생</label><input type="radio" name="userType" value="1" />
			</div>

=======
>>>>>>> 로그인 구현 완료했고 민섭이하고 한 작업 합치면 로그인 완성
			<button type="submit" class="btn btn-primary">
				<i class="glyphicon glyphicon-ok"></i> 회원가입
			</button>

			<a href="../login.jsp" class="btn btn-default"> <i
				class="glyphicon glyphicon-home"></i> 홈
			</a>

		</form:form>


	</div>
</body>
</html>