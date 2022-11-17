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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script>
 
  <link href="${pageContext.request.contextPath}/resources/css/board_write.css" rel="stylesheet">

<title>photo update ui</title>
</head>
<body>

	<div class="container">
		<div class="cover">

			<div class="contents">
				<div class="line">
         	 		<span>게시글 수정</span>
        		</div>
        		
        		<div class="form">
        			<form action="ptupdate" method="post" enctype="multipart/form-data">
        			
        				<c:forEach items="${up}" var="up">
        					
        					<input type="hidden" name="PT_NO" value="${up.PT_NO }">
							<input type="hidden" name="PT_WRITEDAY" value="${up.PT_WRITEDAY}">
							<input type="hidden" name="PT_READCNT" value="${up.PT_READCNT}">
        					
        					<div class="line-title">
           						<label >제목</label>
            					<input type="text" name="PT_TITLE" value="${up.PT_TITLE}" placeholder="제목" class="title">
            				</div>
            				
            				<div class="line-write">
            					<label >작성자</label><br>
            					<input type="text" name="PT_WRITER" value="${member.MEM_NICKNAME}" class="writer" readonly><br>
			          		</div>
			          		
			          		<div class="line-content">
           						<label>내용</label>
            					<textarea id="subject" name="PT_CONTENT" placeholder="${up.PT_CONTENT}" style="height:200px" class="content"></textarea>
       						</div>
        					
        					<label>이미지</label>
        					<div class="upload">
       							<button type="button" class="btn-warning">
        							<i class="fa-solid fa-upload"></i>
        							Upload file
        							<input type="file" name="PT_PICTURE" value="${up.PT_PICTURE}">
       							</button>
       						</div>
       						
       						<div class="boardsubmit">
            				<input type="submit" value="수정" class="submit-btn"> 
							<input type="button" value="취소" onclick="location.href='ptpage'" class="submit-btn">
            			</div>
        						
        				</c:forEach>
        				
        			</form>
				</div>
			</div>
		</div>
	</div>		

</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>