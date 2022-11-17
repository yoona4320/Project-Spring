<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
a{text-decoration: none;}
a:hover 
{text-decoration: underline;
text-decoration-color:red;}
image-grid
{	
	display:grid;
	grid-template-columns:repeat(3, minmax(200px,1fr));	/* 반복설정, 3개의 열 필요 */
	
	grid-gap:1rem;		/* 사진 간격보이기 */
}
image-grid img
{
	width:100%;
	height: 100%;
	object-fit:cover;
}

</style>
<meta charset="UTF-8">
<title>photo out</title>
</head>
<body>


<h2> 사진 게시판 </h2>

<!-- 검색 -->
<form action="ptsearch">
				<select name="sname" size="1">
					<option value="PT_TITLE">제목명</option>
					<option value="PT_WRITER">작성자명</option>
				</select>
					<input type="text" name="svalue">
					<input type="submit" value="검색">
</form>
<!-- 검색끝 -->

<input type="button" value="사진업로드" onclick="location.href='ptinput'"> <br><br>

<div class="image-grid">
	<c:forEach items="${list}" var="list">
		<a href="ptdetail?PT_NO=${list.PT_NO}">
			<img src="./resources/photoimage/${list.PT_PICTURE}" width="300" height="300">
		</a>

		${list.PT_TITLE}
		
		${list.PT_WRITER}
	</c:forEach>
</div> 

</body>
</html>