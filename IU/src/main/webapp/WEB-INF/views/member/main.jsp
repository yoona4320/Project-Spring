<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device=width, initial-scale=1.0" />
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">

<style>
@import url('https://fonts.googleapis.com/css2?family=Hi+Melody&family=Norican&family=Reenie+Beanie&display=swap');
@import url('https://fonts.googleapis.com/css?family=Black+Han+Sans:400');
@import url('https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap&subset=korean');
@font-face 
{
	font-family: 'InkLipquid';
	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/InkLipquid.woff')format('woff');
	font-weight: normal;
	font-style: normal;
}
@font-face 
{
	font-family: 'S-CoreDream-3Light';
	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>

	<div class="hero">

		<video autoplay loop muted plays-inline class="back-video">
			<source src="./resources/image/IU3.mp4" type="video/mp4">
		</video>

		<header>
			<div class="line">
				<a href="index"><img src="./resources/image/iulogo.jpg" class="logo"></a>
				<ul class="snsicons">

					<li><a href="https://www.instagram.com/dlwlrma/">Instagram</a></li>
					<li><a href="https://www.youtube.com/c/dlwlrma">Youtube</a></li>
					<li><a href="https://twitter.com/_IUofficial">Twitter</a></li>

				</ul>
			</div>
		</header>


		<div class="content">
			<h4>IU FanPage</h4>
			<br>
			<c:choose>
				<c:when test="${loginOn == true && member != null }">
					<div class="logout-btn">
						<p style="font-family: 'InkLipquid'; color: white; font-size: 30px; margin-bottom: 35px">
						반가워요!${member.MEM_NICKNAME }님</p>
						<a href="logout" style="text-align: center; border: 3px solid white; padding: 5px 22px;">logout</a>
					</div>
				</c:when>
				<c:otherwise>
					<a href="input">Sign Up</a>
					<a href="login">login</a>
				</c:otherwise>
			</c:choose>
		</div>

		

	</div>

<!-- 햄버거메뉴 클릭시 나오는 검은모달창 -->
<div class="menuicon">
			<input type="checkbox" id="popup"> <label for="popup" class="menubtn"> 
			<span></span> 
			<span></span> 
			<span></span>
			</label>

			<div>
				<label for="popup">
					<ul class="menulist">
						<li><a href="aboutiu">About IU</a></li>
						<li><a href="ntpage">공지사항</a></li>
						<li><a href="melon">앨범소개</a></li>
						<li><a href="bopage">자유게시판</a></li>
						<li><a href="ptpage">포토게시판</a></li>		
						<li><a href="lpage">편지</a></li>
					</ul> 
				</label>
			</div>
		</div>
<!-- 햄버거메뉴 클릭시 나오는 검은모달창 -->

</body>
</html>