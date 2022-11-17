<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../top.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script> 
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aboutiu.css">
     <title>About IU</title>
</head>
<body>
   
<div class="container">
			
      <div class="cover">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
          </ol>
      
          <!-- 이미지넣는 부분 -->
          
          <div class="carousel-inner">
            <div class="item active">
              <img src="./resources/image/1p.jpg" style="width:100%;">
            </div>
      
          
            <div class="item">
              <img src="./resources/image/2p.png"  style="width:100%;">
            </div>
            <div class="item">
              <img src="./resources/image/3p.jpg"  style="width:100%;">
            </div>
            <div class="item">
              <img src="./resources/image/4p.jpg" style="width:100%;">
            </div>
            <div class="item">
              <img src="./resources/image/5p.jpg"style="width:100%;">
            </div>
          </div>
      
          <!-- 좌우 넘기기기능 -->
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        </div>
			<div class="contents">
        <span>Artist</span>
        <h1>아이유</h1>
       <p class="iu-info">
        본명 : 이지은
        국적 : 대한민국
        생일 : 1993년 5월 16일
        별자리 : 황소자리 
        MBTI : INFJ
        혈액형 : A형
       
      </p>
      </div>

            
		</div>

</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>