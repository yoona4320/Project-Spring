<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
a{
text-decoration: none;
}
a:hover {
	text-decoration: underline;
	text-decoration-color:red;
}
</style>
<jsp:include page="cdn.jsp"/>
<meta charset="UTF-8">
<title>공지 출력</title>
</head>
<body>
<h2 style="text-align: center;">공지사항출력</h2>
 <table class="table table-hover table-bordered">
 
        <tr>
        <th style="text-align: center;">글번호</th>
        <th style="text-align: center;">제목</th>
        <th style="text-align: center;">조회수</th>
        <th>비고</th>
      </tr>
   
    <c:forEach items="${list}" var="list">
  
      <tr>
        <td>${list.NT_NO}</td>
        <td><a href="ntdetail?NT_NO=${list.NT_NO}">${list.NT_TITLE}</a></td>
        <td>${list.NT_READCNT}</td>
        <td><a href="ntdelete?NT_NO=${list.NT_NO}">삭제</a></td>       
        
      </tr>      
    </c:forEach>
  </table>
</body>
</html>