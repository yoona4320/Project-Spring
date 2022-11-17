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

<script type="text/javascript">


</script>
<title>board update ui</title>
</head>
<body>
	<div class="container">
		<div class="cover">

			<div class="contents">
				<div class="line">
         	 		<span>게시글 수정</span>
        		</div>
        		
        		<div class="form">
        			<form action="boupdate" method="post" enctype="multipart/form-data" >
        			    
        			    <c:forEach items="${list}" var="list">
        			        				
        				
            				<input type="hidden" name="BO_NO" value="${list.BO_NO }" class="title">
							<input type="hidden" name="LT_WRITEDAY" value="${list.BO_WRITEDAY}">
							<input type="hidden" name="BO_READCNT" value="${list.BO_READCNT}">
            			
            			<div class="line-title">
           					<label >제목</label>
            				<input type="text" name="BO_TITLE" placeholder="제목" class="title" value="${list.BO_TITLE}">
            			</div>
        			
        				<div class="line-write">
            				<label >작성자</label><br>
           					<input type="text"  name="BO_WRITER" value="${member.MEM_NICKNAME}" class="writer" readonly><br>
			            </div>
			            
        				<div class="line-content">
           					<label>내용</label>
            				<textarea id="subject" name="BO_CONTENT" placeholder="${list.BO_CONTENT}" style="height:200px" class="content"></textarea>
       					</div>
       					
       					<label>이미지</label>
        				<div class="upload">
       						<button type="button" class="btn-warning" id="bo_picture">
        						<i class="fa-solid fa-upload"></i>
        						Upload file
        						<input type="file" name="BO_PICTURE">
       						</button>
       					</div>
       					
       					<div class="boardsubmit">
            				<input type="submit" value="수정" class="submit-btn"> 
							<input type="button" value="취소" onclick="location.href='bopage'" class="submit-btn">
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