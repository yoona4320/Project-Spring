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

<script type="text/javascript">

	function check5() 
	{
		var f = document.form5;
		
		//제목
		var vtitle = /^[A-Za-z0-9가-힣]/;
		var ctitle = document.form5.PT_TITLE.value;
		if(ctitle=="")
			{
				alert("제목을 입력해주세요.");
				document.form5.PT_TITLE.select();
				return false;
			}
		
		//내용
		var vcontent = /^[A-Za-z0-9가-힣]/;
		var ccontent = document.form5.PT_CONTENT.value;
		if(ccontent=="")
			{
				alert("내용을 입력해주세요.");
				document.form5.PT_CONTENT.select();
				return false;
			}
		
		//이미지
		var vpicture = /(.*?)\.(jpg|jpeg|png|gif|bmp|pdf)$/;
		var cpicture = document.form5.PT_PICTURE.value;
		if(cpicture=="")
			{
				alert("이미지를 선택해주세요.");
				document.form5.PT_PICTURE.select();
				return false;
			}
		
		alert("작성완료되었습니다.");
		f.submit();
	}

</script>

<title>photo input</title>
</head>
<body>

	<div class="container">
		<div class="cover">
		
			<div class="contents">
				<div class="line">
         	 		<span> 포토게시판 작성 </span>
        		</div>
        		
        		<div class="form">
					<form action="ptsave" method="post" enctype="multipart/form-data" name="form5">
					
						<div class="line-title">
           					<label >제목</label>
            				<input type="text" name="PT_TITLE" placeholder="제목" class="title">
            			</div>
            			
            			<div class="line-write">
            				<label >작성자</label><br>
           					<input type="text"  name="PT_WRITER" value="${member.MEM_NICKNAME}" class="writer" readonly><br>
			            </div>
			            
			            <div class="line-content">
           					<label>내용</label>
            				<textarea id="subject" name="PT_CONTENT" placeholder="내용을 입력하세요.." style="height:200px" class="content"></textarea>
       					</div>
       					
       					<label>이미지</label>
        				<div class="upload">
       						<button type="button" class="btn-warning">
        						<i class="fa-solid fa-upload"></i>
        						Upload file
        						<input type="file" name="PT_PICTURE">
       						</button>
       					</div>
       					
       					<div class="boardsubmit">
            				<input type="button" value="등록" class="submit-btn"  onclick="check5()" class="submit-btn">
            			</div>
					
					</form>
				</div>
			</div>		

			<div class="gotoboard">
				<input type="button" value="목록" class="list-btn" onclick="location.href='ptpage'" class="submit-btn">
		    </div>
		</div> 		
	</div>

</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>