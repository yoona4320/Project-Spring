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

<title>photo delete ui</title>
</head>
<Body>

	<div class="container">
		<div class="cover">

			<div class="contents">
				<div class="line">
         	 		<span>게시글 삭제</span>
        		</div>

				<div class="form">
					<form action="ptdelete" method="post" enctype="multipart/form-data">
					
					<c:forEach items="${del}" var="del">
					
						<input type="hidden" name="PT_NO" value="${del.PT_NO }">
						<input type="hidden" name="PT_WRITEDAY" value="${del.PT_WRITEDAY}">
						<input type="hidden" name="PT_READCNT" value="${del.PT_READCNT}">
						
						<div class="line-title">
           					<label >제목</label>
            				<input type="text" name="PT_TITLE" placeholder="제목" class="title" value="${del.PT_TITLE}" readonly>
            			</div>
        			
        				<div class="line-write">
            				<label >작성자</label><br>
           					<input type="text"  name="PT_WRITER" value="${member.MEM_NICKNAME}" class="writer" readonly><br>
			            </div>
			            
        				<div class="line-content">
           					<label>내용</label>
            				<textarea id="subject" name="PT_CONTENT" placeholder="${del.PT_CONTENT}" style="height:200px" class="content" readonly></textarea>
            				<!-- <img src="./resources/saveimage/${list.PT_PICTURE}" width="150"> -->	
       					</div>
       					<br>
       					<div class="boardsubmit">
            				<input type="submit" value="삭제" class="submit-btn">
							<input type="button" value="취소" onclick="location.href='ptpage'" class="submit-btn">
            			</div>
					
					</c:forEach>
					
					</form>
				</div>
			</div>
		</div>
	</div>		

</Body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>