<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ include file="../top.jsp" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/8d3fc93edf.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/board-detail.css">


<title>letter Detail</title>
</head>
<body>
<!-- detail 영역 시작 -->		
	<input type="hidden" name="LT_NO" id="LT_NO" value="${list.LT_NO}">		
		
		<div class="container">

		<div class="cover">

			<div class="contents">
				<div class="line">
					<span>Dear,IU</span>
				</div>
			</div>
			
			<div class="board_wrap">
				<div class="board-title">
					<p>${list.LT_TITLE}</p>
				</div>
				<div class="board-info">
					<span>${list.LT_WRITER}</span> 
					<span class="date">${list.LT_WRITEDAY}</span>
				</div>
			</div>
			
			<div class="board-content">
				<p>${list.LT_CONTENT}</p>
			</div>
			
			<div class="gotoboard">
				<input type="button" value="목록" onclick="location.href='lpage'"
					class="list-btn">
					
				<c:choose>
					<c:when test="${loginOn == true &&  MEM_NICKNAME == list.LT_WRITER}">
						<input type="button" value="삭제"
							onclick="location.href='ldelete?LT_NO=${list.LT_NO}'"
							class="list-btn">
					</c:when>
				</c:choose>	
			</div>
			
			<!-- detail 영역 끝 -->
		</div>
	</div>
</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>