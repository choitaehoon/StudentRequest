<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String userid = "";
    String name = "";
    String password1;
    String password2;
    String email = "";
    int department;
    String 에러메시지 = null;
    request.setCharacterEncoding("UTF-8");
    if (request.getMethod().equals("POST")) {
        userid = request.getParameter("userid");
        name = request.getParameter("name");
        password1 = request.getParameter("password1");
        password2 = request.getParameter("password2");
        email = request.getParameter("email");
        String s = request.getParameter("department");
        department = Integer.parseInt(s);
        if (userid == null || userid.length() == 0) 에러메시지 = "사용자 아이디를 입력하세요";
        else if (name == null || name.length() == 0) 에러메시지 = "이름을 입력하세요";
        else if (password1 == null || password1.length() == 0) 에러메시지 = "비밀번호1을 입력하세요";
        else if (password2 == null || password2.length() == 0) 에러메시지 = "비밀번호2를 입력하세요";
        else if (password1.equals(password2) == false) 에러메시지 = "비밀번호 불일치";
        else if (email == null || email.length() == 0) 에러메시지 = "이메일 주소를 입력하세요";
    } %> <!DOCTYPE html>
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
        <div class="form-group"><label>사용자 아이디</label> <input type="text" class="form-control" name="userid"
                                                              value="<%= userid %>"/></div>
        <div class="form-group"><label>이름</label> <input type="text" class="form-control" name="name"
                                                         value="<%= name %>"/></div>
        <div class="form-group"><label>비밀번호1</label>
            66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 90 91 92 93 94 95 96 <input
                    type="password" class="form-control" name="password1"/></div>
        <div class="form-group"><label>비밀번호2</label> <input type="password" class="form-control" name="password2"/>
        </div>
        <div class="form-group"><label>이메일</label> <input type="email" class="form-control" name="email"
                                                          value="<%= email %>"/></div>
        <div class="form-group"><label>학과</label> <select class="form-control" name="department">
            <option value="1">소프트웨어공학과</option>
            <option value="2">컴퓨터공학과</option>
            <option value="3">정보통신공학과</option>
            <option value="4">글로컬IT공학과</option>
        </select></div>
        <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-ok"></i> 회원가입</button>
    </form>
    <hr/>
    <% if (에러메시지 != null) { %>
    <div class="alert alert-danger"> 로그인 실패: <%= 에러메시지 %>
    </div>
    <% } %></div>
</body>
</html>