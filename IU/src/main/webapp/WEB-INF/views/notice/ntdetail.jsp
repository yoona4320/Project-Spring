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
<script src="${pageContext.request.contextPath}/resources/css/update.js" defer></script>

<title>notice detail</title>
<script type="text/javascript">
function del(NT_NO) {
      location.href='ntdelete?NT_NO='+NT_NO;
   }
</script>   
</head>
<body>			
<!-- detail 영역 시작 -->
<input type="hidden" name="NT_NO" id = "NT_NO" value="${list.NT_NO}">

	<div class="container">
	
		<div class="cover">

			<div class="contents">
				<div class="line">
					<span>공지사항</span>
				</div>
			</div>
			
			<div class="board_wrap">
					<div class="board-title">
						<p>${list.NT_TITLE}</p>
					</div>
					<div class="board-info">
						<span>${list.NT_WRITER}</span> 
						<span class="date">${list.NT_WRITEDAY}</span>
						<span class="readcnt">조회수 :${list.NT_READCNT}</span>					
					</div>
			</div>	
			
			<div class="board-content">
				<p>${list.NT_CONTENT}</p><br>
			</div>
				
				<div class="gotoboard">
				<span class="board_upde">
					<input type="button" value="목록" onclick="location.href='ntpage'" class="list-btn">
					
					<c:choose>
   	    				<c:when test="${loginOn == true && MEM_NICKNAME =='admin' }">
   	    					<input type="button" value="수정" onclick="location.href='ntmodify?NT_NO=${list.NT_NO}'" class="list-btn"> 
							<input type="button" value="삭제"  class="list-btn" data-toggle="modal" data-target="#exampleModal">

						</c:when>
					</c:choose>
				</span></div>
			</div>
		</div>
		<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">게시물 삭제
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button></h5>
      </div>
      <div class="modal-body">
        게시물을 정말 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
         <button type="button" class="btn btn-primary" onclick="del(${list.NT_NO})">삭제하기</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
      </div>
    </div>
  </div>
</div>		
<!-- detail 영역 끝 -->

</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>