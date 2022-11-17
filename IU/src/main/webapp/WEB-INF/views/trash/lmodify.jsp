<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
	<form action="lmodifydata" method="post">
		<table border="1" style="width: 400px">
		<c:forEach items="${list}" var="list">
			<tr>
				<td>글번호</td>
				<td><input type="hidden" name="LT_NO" value="${list.LT_NO }">${list.LT_NO }
			</tr>
			<tr>
				<td>작성일자</td>
				<td>
				<input type="hidden" name="LT_WRITEDAY" value="${list.LT_WRITEDAY}">
				<fmt:parseDate var="dateString" value="${list.LT_WRITEDAY}" pattern="yyyy-MM-dd"/>
                <fmt:formatDate value="${dateString}" pattern="yyyy년 MM월 dd일"/>	
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="LT_WRITER" value="${list.LT_WRITER}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="LT_TITLE" placeholder="${list.LT_TITLE}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="LT_CONTENT" rows="5" cols="20" placeholder="${list.LT_CONTENT}"></textarea></td>
			</tr>
		</c:forEach>
		</table>
		<br>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</form>
</body>
</html>