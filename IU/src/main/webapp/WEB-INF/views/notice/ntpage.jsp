<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ include file="../top.jsp" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script>
  <link href="${pageContext.request.contextPath}/resources/css/notice.css" rel="stylesheet">

<title>notice page</title>
</head>
<body>

	<div class="container">
		<div class="cover">
		
		<div class="contents">
			<div class="line">
				<span>공지사항</span>
			</div>
			
			<!--검색바-->
        	<form action="ntsearch">
        	<ul class="searchbar">
          		<li>
            		<select name="sname" size="1">
						<option value="NT_TITLE">제목명</option>
        	    	</select>
				</li>          			
          		<li><input class="put" type="text" name="svalue"></li>
          		<li><input type="submit" value="검색" class="search-btn"></li>
          		<li>
                  <a href="ntpage" style="font-size: 19px;"><i class="fa-solid fa-rotate-right"></i></a>
                </li>
			</ul>
			</form>
        	<!--검색바-->

			<!-- 게시판 목록 -->
        	<table>
          		<thead>
            	<tr>
            		<th>번호</th>
            		<th>제목</th>
              		<th>조회수</th>
            	</tr>
          		</thead>
          		<tbody>
          		
          		<c:forEach items="${list}" var="list">
            	<tr>
              		<td class="num">${list.NT_NO}</td>
              		<td class="title"><a href="ntdetail?NT_NO=${list.NT_NO}">${list.NT_TITLE}</a></td>
              		<td class="view">${list.NT_READCNT}</td>
            	</tr>
            	</c:forEach>
            	</tbody>
        	</table>
       	</div>	
        	<!-- 게시판 목록 끝 -->
        		
        	<!--글쓰기버튼-->
      	<div class="gotowrite">
      	<c:choose>
			<c:when test="${loginOn == true && MEM_NICKNAME == 'admin' }">
			<input type="button" value="글쓰기" onclick="location.href='ntinput'" class="write-btn"><br>
			</c:when>
		</c:choose>
      	</div>
      		<!--글쓰기버튼-->
      		
      	<!-- 페이징 처리 -->
         <div class="page">
  			 <c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p">
          		<c:choose>
              		<c:when test="${p == 1}">
                   		<a href="ntpage?nowPage=${paging.startPage}"><</a>
              		</c:when>
           		</c:choose>
   			</c:forEach>
      		
		
        	<c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
            	<c:choose>
            	    <c:when test="${p == paging.nowPage }">
            	        <a href="javascript://" class="item cl">${p}</a>
            	    </c:when>
            	    <c:when test="${p != paging.nowPage }">
            	        <a href="ntpage?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
            	    </c:when>
            	</c:choose>
        	</c:forEach>
        	
      		<c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p">
          		<c:choose>
              		<c:when test="${p == 1}">
                   		<a href="ntpage?nowPage=${paging.endPage}">></a>
              		</c:when>
           		</c:choose>
   			</c:forEach>
            <!-- 페이징 처리 끝 -->
            		
		</div>
	</div>	
</div>			

</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>