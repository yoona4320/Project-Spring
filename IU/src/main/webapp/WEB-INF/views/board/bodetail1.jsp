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
<script src="${pageContext.request.contextPath}/resources/css/rerply.js"
	defer></script>
<!-- <script src="${pageContext.request.contextPath}/resources/css/accordion.js" defer></script> -->


<script type="text/javascript">
	
function check() 
{
	var f = document.form1;
	
	//댓글 작성자
	var vwriter = /^[A-Za-z0-9가-힣]/;
	var cwriter = document.form1.writer.value;
	
	if(cwriter == "")
	{
		alert("로그인 해야 작성할 수 있습니다.");
		return false;
	}
	
	//댓글 내용
	var vcontent = /^[A-Za-z0-9가-힣]/;
	var ccontent = document.form1.content.value;
	
	if(ccontent == "")
	{
		alert("댓글 내용을 입력해주세요.");
		document.form1.content.select();
		return false;
	}

	alert("댓글 작성이 완료되었습니다.");
	f.submit();	
	
}
	
	$(function()
	{
    	$("#like_btn").click(function()
    	{   //폼에서 입력받은 자료를 디비에 저장 ...
    		var BO_NO = "${list.BO_NO}";
    		var MEM_NICKNAME ="${member.MEM_NICKNAME}";
    		$.ajax
    		({
    			type:"post",
    			async:false,
    			url:"updateLike",
    			dataType:"json",
    			data:{"BO_NO":BO_NO,"MEM_NICKNAME":MEM_NICKNAME},
    			success:function(result)
    			{
    				var vnt=JSON.parse(result);
    				if(result==0)
    				{
    					alert("추천 성공");
    					location.reload();
    				}
    				else
    				{
    					alert("추천 취소");
    					location.reload();
    				}
    				   
    			},
    			error:function(data)
    			{
    				alert("전송실패!!");
    			}
   
		    });      //end ajax
    	}); //자료입력
	});
	
</script>

<title>board detail</title>
</head>
<body>

<!-- detail 영역 시작 -->
<input type="hidden" name="BO_NO" id = "BO_NO" value="${list.BO_NO}">

	<div class="container">
	
		<div class="cover">

			<div class="contents">
				<div class="line">
					<span>자유게시판</span>
				</div>
			</div>
			
			<div class="board_wrap">
					<div class="board-title">
						<p>${list.BO_TITLE}</p>
					</div>
					<div class="board-info">
						<span>${list.BO_WRITER}</span> 
						<span class="date">${list.BO_WRITEDAY}</span>
						<span class="readcnt">조회수 :${list.BO_READCNT}</span>
						<span class="like">추천수 :${list.BO_LIKE}</span>								
					</div>
			</div>
			
			<div class="board-content">
				<p>
					<img src="./resources/saveimage/${list.BO_PICTURE}" width="400">
				</p>
				<p>${list.BO_CONTENT}</p>
				
			</div>
			
			<div class="gotoboard">	
				<c:choose>
					<c:when test="${loginOn == true && member != null }">
						<button type="button" id="like_btn" class="like-btn" style="color:#DB7093"><i class="fa-regular fa-heart"></i>LIKE</button>
					</c:when>
				</c:choose>
				
				<input type="button" value="목록" onclick="location.href='bopage'" class="list-btn">
					
					<c:choose>
   	    				<c:when test="${loginOn == true &&  MEM_NICKNAME == list.BO_WRITER}">
							<input type="button" value="수정" onclick="location.href='bomodify?BO_NO=${list.BO_NO}'" class="list-btn">
							<input type="button" value="삭제" onclick="location.href='bodeleteui?BO_NO=${list.BO_NO}'" class="list-btn">
						</c:when>
					</c:choose>
					
			</div>
<!-- detail 영역 끝 -->

<!-- 댓글 작성 -->
	<section class="mb-5">
	
		<div class="card-bg-light">
			<span class="font-reply">댓글[${list.RECNT}] </span>
			
			<div class="card-body">
				<form class="mb-4" method="post" action="boreply" name="form1">
					<input type="text" placeholder="작성자" value="${member.MEM_NICKNAME}" name="writer">
					<textarea class="form-control" rows="3" placeholder="댓글을 입력하세영" name="content"></textarea>
					
					<input type="hidden" name="BO_NO" value="${list.BO_NO}">
					
					<div class="reply-submit">
						<input type="button" value="작성" class="reply-btn" onclick="check()">
					</div>					
				</form>
<!-- 댓글 작성 끝 -->	

<!-- 댓글 출력 -->
	<c:forEach items="${reply}" var="re">
		<div class="d-flex">
			<div class="before-update" id="before-update">
			
				<div class="ms-3">
					<div class="fw-bold">
						<i class="fa-sharp fa-solid fa-user"></i> 
						${re.BO_WRITER}
					</div>	
					<c:forEach begin="1" end="${re.BO_INDENT }"> &emsp; </c:forEach>
						<c:if test="${re.BO_INDENT > 0}">
							<img alt="" src="./resources/image/arraw.PNG" height="10px" width="10px">
						</c:if>
					${re.BO_CONTENT}
				</div>
				
				<!-- 대댓글 아코디언 -->
				<div class="rerebtn">
					<!-- 대댓글 입력 -->
					<c:choose>
   	    		    <c:when test="${loginOn == true &&  member != null}">	
					<input type="button" value="답글" class="accordion">
					</c:when>
					</c:choose>
						<div class="panel">
							<form action="borereply" method="post">
								<input type="hidden" name="BO_NO" value="${re.BO_NO }">
								<input type="hidden" name="BO_WRITEDAY" value="${re.BO_WRITEDAY }">
								<input type="hidden" name=BO_GROUPS value="${re.BO_GROUPS }">
								<input type="hidden" name="BO_WRITER" value="${re.BO_WRITER }"> 
								<input type="hidden" name="BO_STEP" value="${re.BO_STEP }"> 
								<input type="hidden" name="BO_INDENT" value="${re.BO_INDENT }">
							
								<div class="rereply-writer">
									<input type="text" placeholder="대댓글작성자" value="${member.MEM_NICKNAME}" class="rerewriter-btn" name="RWRITER" readonly>
								</div>
								
								<textarea class="form-control" rows="3" placeholder="답글을 입력하세영" name="RCONTENT"></textarea>
								
								<div class="rereply-submit">
									<input type="submit" value="작성" class="reply-btn">
								</div>
							</form>
						</div>
						<!-- 대댓글 입력 끝 -->
					
						<!-- 댓글수정삭제 -->
						<c:choose>
   		    				<c:when test="${loginOn == true && MEM_NICKNAME == re.BO_WRITER }">
   		    					<!----> 
                                <input type="button" value="수정" class="accordion">

                                <div class="panel">
                                <form action="ReUpdateForm" method="POST">
                                    <div class="rereply-writer">
                                    
                   					<input type="hidden" name="BO_NO" value="${re.BO_NO }">
                   					<input type="hidden" name="BO_RNO" value="${re.BO_RNO }">
								    <input type="hidden" name="BO_WRITEDAY" value="${re.BO_WRITEDAY }">  
								    <input type="hidden" name=BO_GROUPS value="${re.BO_GROUPS }">
								    <input type="hidden" name="BO_STEP" value="${re.BO_STEP }"> 
								    <input type="hidden" name="BO_INDENT" value="${re.BO_INDENT }">
                                     <input type="text" placeholder="댓글작성자" name="BO_WRITER" value="${member.MEM_NICKNAME}" readonly
                                                class="reply-btn">
                                    </div>

                                    <textarea class="form-control" rows="3" placeholder="댓글수정" name="BO_CONTENT"></textarea>
                                    <div class="rereply-submit">
                                    <input type="submit" value="수정" class="reply-btn">
                                    </div>
                                    
                                    </form>
                                    </div>
               
      							<input type="button" value="삭제" onclick="location.href='boredelete?BO_RNO=${re.BO_RNO}'" class="reply-btn">
      						</c:when>
      					</c:choose>
      					<!-- 댓글삭제 -->
      				
      				
				</div>	
				<!-- 대댓글 아코디언 끝 -->
			
				
			</div>
		</div>				
	</c:forEach>
	
	</div>
	</div>
	</section>
<!-- 댓글 끝 -->

</div>
</div>


</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>