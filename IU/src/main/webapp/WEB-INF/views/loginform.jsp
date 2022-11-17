<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
<title>Login Form</title>

<c:choose>
	<c:when test="${result=='fail' }">
		<script type="text/javascript">
			window.onload=function()
			{
				alert("아이디 혹은 비밀번호가 틀립니다. 다시 로그인 하세요");
			}
		</script>
	</c:when>
</c:choose>

</head>

<body>	

    <section class="login-form">
    
		<h1>로그인</h1>
		<form action="loginsave" method="post">
            
		<div class="int-area">            
			<input type="text" name="MEM_ID"  autocomplete="off" required>
			<label for="MEM_ID">아이디</label>         
		</div>
		<div class="int-area">
			<input type="password" name="MEM_PW"  autocomplete="off" required>
			<label for="MEM_PW">패스워드</label>
		</div>
		<div class="btn-area">
			<button type="submit" class="login-btn">로그인</button>
		</div>
        
		</form>
	
	<div class="caption">
		<a href="input">회원이 아니신가요? 가입하기</a>
	</div>
	
	</section>
         
</body>
</html>