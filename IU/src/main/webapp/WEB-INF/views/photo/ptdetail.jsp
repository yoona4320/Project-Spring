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
<script src="https://kit.fontawesome.com/8d3fc93edf.js"	crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board-detail.css">
<script src="${pageContext.request.contextPath}/resources/css/rerply.js" defer></script>
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
	   	$("#ptlike_btn").click(function()
	  	{   //폼에서 입력받은 자료를 디비에 저장 ...
	   		var PT_NO = "${list.PT_NO}";
	   		var MEM_NICKNAME ="${member.MEM_NICKNAME}";
	   		$.ajax
	   		({
	   			type:"post",
	   			async:false,
	   			url:"PTLike",
	   			dataType:"json",
	   			data:{"PT_NO":PT_NO,"MEM_NICKNAME":MEM_NICKNAME},
	   			success:function(result2)
	   			{
	   				var vnt=JSON.parse(result2);
	   				if(result2==0)
	   				{
	   					alert("추천 성공");
	   					location.href='ptdetail1?PT_NO=' + PT_NO;
	   				}
	   				else if(result2==1)
	   				{
	   					alert("추천 취소");
	   					location.href='ptdetail1?PT_NO=' + PT_NO;
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

<title>photo detail</title>
</head>
<body>			

<!-- detail 영역 시작 -->
<input type="hidden" name=PT_NO value="${list.PT_NO }">

	<div class="container">
	
		<div class="cover">
	
			<div class="contents">
				<div class="line">
					<span>포토게시판</span>
				</div>
			</div>
			
			<div class="board_wrap">
					<div class="board-title">
						<p>${list.PT_TITLE}</p>
					</div>
					<div class="board-info">
						<span>${list.PT_WRITER}</span> 
						<span class="date">${list.PT_WRITEDAY}</span>
						<span class="readcnt">조회수 :${list.PT_READCNT}</span>
					    <span class="like">추천수 :${list.PT_LIKE}</span>				
					</div>
			</div>			
			
			<div class="board-content">
				<p>
					<img src="./resources/photoimage/${list.PT_PICTURE}" width="400">
				</p><br>
				<p>${list.PT_CONTENT}</p><br>
			</div>
			
			<div class="gotoboard">	
				
				<c:choose>
   	    			<c:when test="${loginOn == true && member != null }">
						<button type="button" id="ptlike_btn" class="like-btn" style="color:#DB7093"><i class="fa-regular fa-heart"></i>LIKE</button>
					</c:when>
				</c:choose>
			
				<span class="board_upde">
					<input type="button" value="목록" onclick="location.href='ptpage'"  class="list-btn">
					
					<c:choose>
   	    				<c:when test="${loginOn == true &&  MEM_NICKNAME == list.PT_WRITER}">
							<input type="button" value="수정" onclick="location.href='ptmodify?PT_NO=${list.PT_NO}'"  class="list-btn">
							<input type="button" value="삭제" onclick="location.href='ptdeleteui?PT_NO=${list.PT_NO}'"  class="list-btn">
						</c:when>
					</c:choose>
				</span>
				
			</div>
<!-- detail 영역 끝 -->			

<!-- 댓글 작성 -->

			<section class="mb-5">
			
				<div class="card-bg-light">
				<span class="font-reply">댓글[${list.RECNT}]</span>
				
					<div class="card-body">
						<form class="mb-4" method="post" action="ptreply" name="form1">
							<input type="text" placeholder="작성자" value="${member.MEM_NICKNAME}" name="writer">
							<textarea class="form-control" rows="3" placeholder="댓글을 입력하세영" name="content"></textarea>
					
							<input type="hidden" name="PT_NO" value="${list.PT_NO}">
					
							<div class="reply-submit">
								<input type="button" value="작성" class="reply-btn" onclick="check()">
							</div>					
						</form>
<!-- 댓글 작성 끝 -->

<!-- 댓글 출력 -->
						<c:forEach items="${rep}" var="re">
							<div class="d-flex">
								<div class="before-update" id="before-update">
									
									<div class="ms-3">
										<div class="fw-bold">
											<i class="fa-sharp fa-solid fa-user"></i> 
											${re.PT_WRITER}
										</div>	
										<c:forEach begin="1" end="${re.PT_INDENT }"> &emsp; </c:forEach>
											<c:if test="${re.PT_INDENT > 0}">
												<img alt="" src="./resources/image/arraw.PNG" height="10px" width="10px">
											</c:if>
										${re.PT_CONTENT}
									</div>
									
									<!-- 대댓글 입력 -->
									<div class="rerebtn">
										<c:choose>
   	    		 					    <c:when test="${loginOn == true &&  member != null}">	
										<input type="button" value="답글" class="accordion">
										</c:when>
										</c:choose>
											<div class="panel">
												<form action="ptrereply" method="post">
													<input type="hidden" name="PT_NO" value="${re.PT_NO }">
													<input type="hidden" name="PT_WRITEDAY" value="${re.PT_WRITEDAY }">
													<input type="hidden" name="PT_CONTENT" value="${re.PT_CONTENT }">
													<input type="hidden" name=PT_GROUPS value="${re.PT_GROUPS }">
													<input type="hidden" name="PT_WRITER" value="${re.PT_WRITER }">
													<input type="hidden" name="PT_STEP" value="${re.PT_STEP }">
													<input type="hidden" name="PT_INDENT" value="${re.PT_INDENT }">
								
													<div class="rereply-writer">
														<input type="text" placeholder="대댓글작성자" value="${member.MEM_NICKNAME}" class="rerewriter-btn" name="RWRITER" readonly>
													</div>
								
													<textarea class="form-control" rows="3" placeholder="답글을 입력하세영" name="RCONTENT"></textarea>
								
													<div class="rereply-submit">
														<input type="submit" value="작성" class="reply-btn">
													</div>
												</form>
											</div>
											
										<c:choose>
   		    								<c:when test="${loginOn == true && MEM_NICKNAME == re.PT_WRITER }">
   		    							    <input type="button" value="수정" class="accordion">

                           				     <div class="panel">
                               			     <form action="PTReUpdateForm" method="POST">
                                    		 <div class="rereply-writer">
                                    
                   							<input type="hidden" name="PT_NO" value="${re.PT_NO }">
                   							<input type="hidden" name="PT_RNO" value="${re.PT_RNO }">
										    <input type="hidden" name="PT_WRITEDAY" value="${re.PT_WRITEDAY }">  
										    <input type="hidden" name=PT_GROUPS value="${re.PT_GROUPS }">
										    <input type="hidden" name="PT_STEP" value="${re.PT_STEP }"> 
										    <input type="hidden" name="PT_INDENT" value="${re.PT_INDENT }">
                                	        <input type="text" placeholder="댓글작성자" name="PT_WRITER" value="${member.MEM_NICKNAME}" readonly
                                                class="rerewriter-btn">
                                		    </div>

                               		       <textarea class="form-control" rows="3" placeholder="댓글수정" name="PT_CONTENT"></textarea>
                              		       <div class="rereply-submit">
                             		       <input type="submit" value="수정" class="reply-btn">
                             		       </div>
                                    
                              		      </form>
                              		      </div> 
      											<input type="button" value="삭제" onclick="location.href='ptredelete?PT_RNO=${re.PT_RNO}'" class="reply-btn">
      										</c:when>
      									</c:choose>	
									</div>
									<!-- 대댓글 입력 끝 -->
								
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