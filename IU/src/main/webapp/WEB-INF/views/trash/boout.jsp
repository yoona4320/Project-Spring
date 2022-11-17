<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
caption{text-align:right;}
body{text-align:center;}
a
{
text-decoration: none;
}
a:hover 
{
	text-decoration: underline;
	text-decoration-color:red;
}
</style>
<meta charset="UTF-8">
<title>board out</title>
</head>
<body>

<h2> 게시판</h2>

<table border="1" align="center">
<caption><input type="button" value="글쓰기" onclick="location.href='boinput'"><br></caption>

	<!-- 검색 영역 -->
	<tr>
		<td colspan="6">
			<form action="search">
				<select name="sname" size="1">
					<option value="BO_TITLE">제목명</option>
					<option value="BO_WRITER">작성자명</option>
				</select>
					<input type="text" name="svalue">
					<input type="submit" value="검색">
			</form>
		</td>
	</tr>
	<!-- 검색 영역 끝 -->

	<tr>
		<th style="text-align: center;">글번호</th>
        <th style="text-align: center;">제목</th>
        <th style="text-align: center;">작성자</th>
        <th style="text-align: center;">작성일자</th>
        <th style="text-align: center;">조회수</th>
        <th style="text-align: center;">비고</th>
	</tr>
	
	<c:forEach items="${list}" var="list">
	<tr>
		<td>${list.BO_NO}</td>
		<td>
		<a href="bodetail?BO_NO=${list.BO_NO}">${list.BO_TITLE}</a>
		</td>
		<td>${list.BO_WRITER}</td>
		<td>${list.BO_WRITEDAY}</td>
		<td>${list.BO_READCNT}</td>
		<td>
		<a href="bomodify?BO_NO=${list.BO_NO}">수정</a> &emsp;
		<a href="bodeleteui?BO_NO=${list.BO_NO}">삭제</a>
		</td>
	</tr>
	</c:forEach>
	
</table>
</body>
</html>