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
  <link href="${pageContext.request.contextPath}/resources/css/board_write.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/resources/css/main.js" defer></script>

<script type="text/javascript">

	function check2() 
	{
		var f = document.form2;
		
		//제목
		var vtitle = /^[A-Za-z0-9가-힣]/;
		var ctitle = document.form2.NT_TITLE.value;
		if(ctitle=="")
			{
				alert("제목을 입력해주세요.");
				document.form2.NT_TITLE.select();
				return false;
			}
		
		//내용
		var vcontent = /^[A-Za-z0-9가-힣]/;
		var ccontent = document.form2.NT_CONTENT.value;
		if(ccontent=="")
			{
				alert("내용을 입력해주세요.");
				document.form2.NT_CONTENT.select();
				return false;
			}
		
		alert("작성완료되었습니다.");
		f.submit();
	}

</script>

<title>공지쓰기</title>
</head>
<body>

	<div class="container">
		<div class="cover">
		
			<div class="contents">
				<div class="line">
         	 		<span>공지사항 글쓰기</span>
        		</div>
        		
        		<div class="form">
        			<form action="ntinputsave" method="post" name="form2">
        			
        				<div class="line-title">
           					<label >제목</label>
            				<input type="text" name="NT_TITLE" placeholder="제목" class="title">
            			</div>
            			
            			<div class="line-write">
            				<label >작성자</label><br>
           					<input type="text" name="NT_WRITER" value="admin" class="writer" readonly>
			            </div>
			            
			            <div class="line-content">
           					<label>내용</label>
            				<textarea id="subject" name="NT_CONTENT" placeholder="내용을 입력하세요.." style="height:200px" class="content"></textarea>
       					</div>
       					
       					<div class="boardsubmit">
       						<input type="button" value="등록" class="submit-btn" onclick="check2()" class="submit-btn">
            			</div>
        			
        			</form>
        		</div>
        	</div>
        	
        	<div class="gotoboard">
				<input type="button" value="목록" class="list-btn" onclick="location.href='ntpage'" class="submit-btn">
		    </div>
		</div> 		
	</div>		
        			
</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>