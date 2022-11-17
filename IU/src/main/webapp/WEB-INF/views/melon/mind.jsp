<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script>
	<link href="${pageContext.request.contextPath}/resources/css/album.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/css/melon.js" defer></script>

<title>마음</title>
</head>
<body>
	
	<!-- track list -->
	<div class="bg-image" 
        style="background: url(melonimage/마음.jpg) repeat no-repeat center;  background-size: cover;  ">
        <div class="filter-blur"></div>
        <div class="backtomenu"><a href="#"><i class="fa-solid fa-arrow-left-long"></i></a></div>

        <div class="album-cover">

            <div class="backtomenu"><a href="melon"><i class="fa-solid fa-arrow-left-long"></i></a></div>

            <img src="melonimage/마음.jpg" alt="celebrity" class="album-img">
            <div class="song-info">

                <p>아이유</p>
                <p> 마음 </p>

                <div class="track-list">
                    <span style="font-size: 43px;">앨범수록곡</span><br>

                    <ul>
                        <div class="notice-title">
                            <li style="font-size: 22px; color: rgb(210, 156, 233); ">Title</li>
                        <li id="musicbtn" class="musicbtn">
                            "마음"
                        </li>
                    </div>

                    </ul>
                </div>
            </div>

        </div>

    </div>
    <!-- track list 끝 -->
    
    <!-- 마음 -->
    <div id="myModal" class="modal" style="background-color: rgb(207, 207, 207,0.95);">

        <!-- The Close Button -->
        <span class="close">&times;</span>

        <!-- Modal Content (The Image) -->
        <div class="modal-content">

            <div class="mv">
                
                <iframe width="700" height="600" src="https://www.youtube.com/embed/he2C4lx63M0" title="heart (마음)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                
            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(222, 106, 201);"></i></li>
                <l1>아이유-마음</l1>


            </div>
            <div class="cele-lyrics">
                <h1>
                    툭 웃음이 터지면 그건 너
                    쿵 내려앉으면은 그건 너
                    축 머금고 있다면 그건 너
                    둥 울림이 생긴다면 그건 너
                    
                    그대를 보며
                    나는 더운 숨을 쉬어요
                    아픈 기분이 드는 건
                    그 때문이겠죠
                    
                    나를 알아주지 않으셔도 돼요
                    찾아오지 않으셔도
                    다만 꺼지지 않는 작은 불빛이
                    여기 반짝 살아있어요
                    영영 살아있어요
                    
                    눈을 떼지 못 해
                    하루종일 눈이 시려요
                    슬픈 기분이 드는 건
                    그 때문이겠죠
                    
                    제게 대답하지 않으셔도 돼요
                    달래주지 않으셔도
                    다만 꺼지지 않는 작은 불빛이
                    여기 반짝 살아있어요
                    
                    세상 모든 게 죽고 새로 태어나
                    다시 늙어갈 때에도
                    감히 이 마음만은 주름도 없이
                    여기 반짝 살아있어요
                    
                    영영 살아있어요
                    영영 살아있어요
                </h1>

            </div>

        </div>

    </div>
    <!-- 마음 끝 -->

</body>
</html>