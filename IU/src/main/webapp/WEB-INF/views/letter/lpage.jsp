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
  <link href="${pageContext.request.contextPath}/resources/css/letter.css" rel="stylesheet">
  
<script type="text/javascript">

	function check3() 
	{
		var f = document.form3;
		
		//제목
		var vtitle = /^[A-Za-z0-9가-힣]/;
		var ctitle = document.form3.LT_TITLE.value;
		if(ctitle=="")
			{
				alert("제목을 입력해주세요.");
				document.form3.LT_TITLE.select();
				return false;
			}
		
		//내용
		var vcontent = /^[A-Za-z0-9가-힣]/;
		var ccontent = document.form3.LT_CONTENT.value;
		if(ccontent=="")
			{
				alert("내용을 입력해주세요.");
				document.form3.LT_CONTENT.select();
				return false;
			}
		
		alert("작성완료되었습니다.");
		f.submit();

	}


</script>    
  
<title>letter page</title>
</head>
<body>
	<div class="container">
		<div class="cover">
		
			<div class="contents">
        		<div class="line">
          		<span> 편지함</span>
        	</div>
        	
        	<!-- 편지글 영역 -->        	
        	<table>
          	<thead>
            	<tr>
            	  <th>번호</th>
            	  <th>제목</th>
            	  <th>작성자</th>
            	  <th>작성일자</th>
            	</tr>
          	</thead>
          	<tbody>
          		
          		<c:forEach items="${view}" var="list">
          		<form name="formletter">
          		<tr>
          			<td class="num">${list.LT_NO}</td>
             		<td class="title">
             			<a href="ldetail?LT_NO=${list.LT_NO}" >${list.LT_TITLE} 
             		</td>
        		    <td class="writer">${list.LT_WRITER}</td>
        		    <td class="writeday">
                   		<fmt:parseDate var="dateString" value="${list.LT_WRITEDAY}" pattern="yyyy-MM-dd"/>
        		   		<fmt:formatDate value="${dateString}" pattern="yyyy-MM-dd"/>
                  	</td>
          		</tr> 
          		</form> 
          		</c:forEach>
          		        		
          	</tbody>        	
        	</table>
        	<!-- 편지글 영역 끝 -->
        	
        </div>
        
        <!--글쓰기버튼-->
      	<div class="gotowrite">
      		<c:choose>
				<c:when test="${loginOn == true && member != null }">
				<input type="button" value="글쓰기" id="myBtn" class="write-btn" style="text-align:center;"><br>
				</c:when>
			</c:choose>
      	</div>
      	<!--글쓰기버튼-->
      		
      		<!-- 페이징 처리 -->
      		
      	<div class="page">
  			 <c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p">
          		<c:choose>
              		<c:when test="${p == 1}">
                   		<a href="lpage?nowPage=${paging.startPage}"><</a>
              		</c:when>
           		</c:choose>
   			</c:forEach>
   					
        	<c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
            	<c:choose>
            	    <c:when test="${p == paging.nowPage }">
            	        <a href="javascript://" class="item cl">${p}</a>
            	    </c:when>
            	    <c:when test="${p != paging.nowPage }">
            	        <a href="lpage?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
            	    </c:when>
            	</c:choose>
        	</c:forEach>
      		
      		<c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p">
          		<c:choose>
              		<c:when test="${p == 1}">
                   		<a href="lpage?nowPage=${paging.endPage}">></a>
              		</c:when>
           		</c:choose>
   			</c:forEach>      		
      		<!-- 페이징 처리 끝 -->	
      	</div>	
	</div>
</div>

<!-- 편지지 form -->
	<div id="myModal" class="modal">
		<span class="close">&times;</span>
		<div id="wrap">
			<h1 class="lettertext">Dear, IU</h1>
			<div id='form_wrap'>
				<form action="linputsave" method="post" name="form3">
					<p>제목</p>
          			<input type="text" name="LT_TITLE" />
          			<p>아이유에게,</p>
          			<textarea name="LT_CONTENT" value="Your Message"></textarea>
          			<p>사랑을 담아서,</p>
          			<input type="text" name="LT_WRITER" value="${member.MEM_NICKNAME}" />
          			
          			<input type="button" value="send to IU" class="lettersubmit" onclick="check3()" />
          			
				</form>
			</div>
		</div>
	</div>
<!-- 편지지 form 끝 -->
	
</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>