<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style> body {
        font-family: 굴림체;
    }

    input.form-control, select.form-control {
        width: 200px;
    } </style>
</head>
<body>
<div class="container"><h1>회원가입</h1>
    <hr/>
    <form method="post">
        <div class="form-group"><label>사용자 아이디</label> <input type="text" class="form-control" name="userid"/></div>
        <div class="form-group"><label>이름</label> <input type="text" class="form-control" name="name"/></div>
        <div class="form-group"><label>비밀번호1</label>
            <input type="password" class="form-control" name="password1"/></div>
        <div class="form-group"><label>비밀번호2</label> <input type="password" class="form-control" name="password2"/>
        </div>
        <div class="form-group"><label>이메일</label> <input type="email" class="form-control" name="email"/></div>
        <div class="form-group"><label>학과</label> <select class="form-control" name="department">
            <option value="1">소프트웨어공학과</option>
            <option value="2">컴퓨터공학과</option>
            <option value="3">정보통신공학과</option>
            <option value="4">글로컬IT공학과</option>
        </select></div>
        <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-ok"></i> 회원가입</button>
    </form>
    <hr/>
</div>
</body>
</html>