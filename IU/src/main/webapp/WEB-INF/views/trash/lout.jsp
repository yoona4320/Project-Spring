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
<title>Insert title here</title>
</head>
<body>
<h2 style="text-align: center;">편지출력</h2>
 <table class="table table-hover table-bordered">
 
        <tr>
        <th style="text-align: center;">글번호</th>
        <th style="text-align: center;">작성자</th>
        <th style="text-align: center;">제목</th>
      </tr>
   
    <c:forEach items="${list}" var="list">
  
      <tr>
        <td>${list.LT_NO}</td>
        <td>${list.LT_WRITER}</td>
        <td><a href="ldetail?LT_NO=${list.LT_NO}">${list.LT_TITLE}</a></td>
      </tr>      
    </c:forEach>
  </table>
</body>
</html>