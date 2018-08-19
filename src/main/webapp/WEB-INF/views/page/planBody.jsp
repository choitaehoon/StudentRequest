<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/page/mainpage.jsp"%>
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
</head>


<body>
<main><section>
<div>
    <form id="planBody" name="planBody" method="post">
            <input type="hidden" name="id" value="${ loginInfo.id }"> 
			<input type="hidden" name="userType" value="${ loginInfo.userType }">
			<input type="hidden" name="classId" value="${ classPlan.classId }">
        <div>
            <div>
                <table>
                    <tr>
                    <th style="width: 80px;">게시물번호</th>
                    <td style="text-align: left;color: #555;">${classPlan.planNo }</td>
               
                    </tr>
                    <tr>
                    <th style="width: 50px;">제목</th>
                    <td style="text-align: left;color: #555;">${classPlan.title }</td>

                    </tr>
                    <tr>
                    <th style="width: 70px;">작성날짜</th>
                    <td style="text-align: left;color: #555;">${classPlan.classDate }</td>
                    </tr>
                    
                    <tr>
                     <th style="width: 50px;">내용</th>
                     <td><textarea style="width: 500px" rows="10" cols="10" id="planBody" name="planBody">
                        <c:out value="${classPlan.planBody }"/></textarea></td>
                    </tr>
                    
                    
                </table>
                <div>
                    <a href='#' onClick='fn_update()'>수정</a>
                    <a href='#?' onClick='fn_cancel()'>목록</a>
                    <a href='#' onClick='fn_relay()'>답변</a>                    
                </div>
            </div>
            <a href="planBoard?classId=${classId}&id=${loginInfo.id}&userType=${loginInfo.userType}" class="btn btn-default"> <i
				class="glyphicon glyphicon-list"></i> 목록으로
			</a>
        </div>
        
     
    </form>
<script>
//목록
function fn_cancel(){
    
    var form = document.getElementById("viewForm");
    
    form.action = "<c:url value='/page/palnBoard'/>";
    form.submit();
    
}
 
//수정
function fn_update(){
    
    var form = document.getElementById("viewForm");
    
    form.action = "<c:url value='/board/updateboard.do'/>";
    form.submit();
}
 
//답변
function fn_relay(){
    
    var form = document.getElementById("viewForm");
    
    form.action = "<c:url value='/board/relayForm.do'/>";
    form.submit();
    
}
</script>
</div>
</section>
</main>
</body>
</html>