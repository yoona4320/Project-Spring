<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="untouchable">
<head>

<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script>
	<link href="${pageContext.request.contextPath}/resources/css/album.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/css/melon.js" defer></script>

<title>Night Letter</title>
</head>
<body>

	<div class="bg-image"
        style="background: url(melonimage/밤편지.jpg) repeat no-repeat center;  background-size: cover;  ">
        <div class="filter-blur"></div>
        <div class="backtomenu"><a href="#"><i class="fa-solid fa-arrow-left-long"></i></a></div>

        <div class="album-cover">

            <div class="backtomenu"><a href="melon"><i class="fa-solid fa-arrow-left-long"></i></a></div>

            <img src="melonimage/밤편지.jpg" alt="celebrity" class="album-img">
            <div class="song-info">

			
                <p>아이유</p>
                <p> 밤편지</p>

                <div class="track-list">
                    <span style="font-size: 43px;">앨범수록곡</span><br>

                    <ul>
                        <div class="notice-title">
                            <li style="font-size: 22px; color: rgb(210, 156, 233); ">Title</li>
                            <li id="musicbtn" class="musicbtn">
                                "밤편지"
                            </li>
                        </div>


                    </ul>
                </div>
            </div>

        </div>

    </div>
    <!-- The Modal -->
    <div id="myModal" class="modal" style="background-color: rgb(214, 215, 207,0.95);">

        <!-- The Close Button -->
        <span class="close">&times;</span>

        <!-- Modal Content (The Image) -->
        <div class="modal-content">

            <div class="mv">
                    <iframe width="700" height="600" src="https://www.youtube.com/embed/BzYnNdJhZQw"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(210, 156, 233);"></i></li>
                <l1>아이유-밤편지</l1>


            </div>
            <div class="cele-lyrics">
                <h1>
                    이 밤 그날의 반딧불을
                    당신의 창 가까이 보낼게요
                    음 사랑한다는 말이에요
                    
                    나 우리의 첫 입맞춤을 떠올려
                    그럼 언제든 눈을 감고
                    음 가장 먼 곳으로 가요
                    
                    난 파도가 머물던
                    모래 위에 적힌 글씨처럼
                    그대가 멀리 사라져 버릴 것 같아
                    늘 그리워 그리워
                    
                    여기 내 마음속에
                    모든 말을 다 꺼내어 줄 순 없지만
                    사랑한다는 말이에요
                    
                    어떻게 나에게
                    그대란 행운이 온 걸까
                    지금 우리 함께 있다면 아
                    얼마나 좋을까요
                    
                    난 파도가 머물던
                    모래 위에 적힌 글씨처럼
                    그대가 멀리 사라져 버릴 것 같아
                    또 그리워 더 그리워
                    
                    나의 일기장 안에
                    모든 말을 다 꺼내어 줄 순 없지만
                    사랑한다는 말
                    
                    이 밤 그날의 반딧불을 당신의
                    창 가까이 띄울게요
                    
                    음 좋은 꿈 이길 바라요
                </h1>

            </div>

        </div>




    </div>

</body>
</html>