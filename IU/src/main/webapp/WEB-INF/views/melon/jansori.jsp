<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="untouchable">
<head>

<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script>
	<link href="${pageContext.request.contextPath}/resources/css/album.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/css/melon.js" defer></script>

<title>Jansori</title>
</head>
<body>

	<div class="bg-image"
        style="background: url(melonimage/잔소리.jpg) repeat no-repeat center;  background-size: cover;  ">
        <div class="filter-blur"></div>
        <div class="backtomenu"><a href="#"><i class="fa-solid fa-arrow-left-long"></i></a></div>

        <div class="album-cover">

            <div class="backtomenu"><a href="melon"><i class="fa-solid fa-arrow-left-long"></i></a></div>

            <img src="melonimage/잔소리.jpg" alt="celebrity" class="album-img">
            <div class="song-info">

                <p>아이유</p>
                <p> 잔소리</p>

                <div class="track-list">
                    <span style="font-size: 43px;">앨범수록곡</span><br>

                    <ul>
                        <div class="notice-title">
                            <li style="font-size: 22px; color: rgb(210, 156, 233); ">Title</li>
                            <li id="musicbtn" class="musicbtn">
                                "잔소리"
                            </li>
                        </div>
                            <li id="musicbtn-sec" class="musicbtn">
                                "Rain Drop"
                            </li>
                            
                        


                    </ul>
                </div>
            </div>

        </div>

    </div>
    <!-- 잔소리 -->
    <div id="myModal" class="modal" style="background-color: rgb(207, 207, 207,0.95);">

        <!-- The Close Button -->
        <span class="close">&times;</span>

        <!-- Modal Content (The Image) -->
        <div class="modal-content">

            <div class="mv">
            
                <iframe width="700" height="600" src="https://www.youtube.com/embed/bzdsqPOJK_I" title="Nitpicking (잔소리 (with 2AM 슬옹))" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    
            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(210, 156, 233);"></i></li>
                <l1>아이유-잔소리</l1>

            </div>
            <div class="cele-lyrics">
                <h1>
                    늦게 다니지좀 마
                    술은 멀리좀 해봐
                    열살짜리 애처럼 말을 안듣니

                    정말 웃음만 나와
                    누가 누굴보고 아이라 하는지
                    정말 웃음만 나와

                    싫은 얘기 하게 되는 내 맘을 몰라
                    좋은 얘기만 나누고 싶은 내맘을 몰라
                    그만할까 그만하자

                    하나부터 열까지 다 널 위한 소리
                    내 말 듣지 않는 너에게는 뻔한 잔소리
                    그만하자 그만하자
                    사랑하기만해도 시간 없는데

                    머리 아닌 가슴으로 하는 이야기
                    니가 싫다 해도 안 할수가 없는 이야기
                    그만하자 그만하자

                    나의 잔소리가 들려

                    밥은 제 때 먹는지
                    여잔 멀리 하는지
                    온 종일을 네 옆에 있고 싶은데

                    내가 그 맘인거야
                    주머니속에 널 넣고 다니면
                    정말 행복할텐데

                    둘이 아니면 안되는 우리 이야기
                    누가 듣는다면 놀려대고 웃을 이야기
                    그만할까 그만하자

                    하나부터 열까지 다 널 위한 소리
                    내 말 듣지 않는 너에게는 뻔한 잔소리
                    그만하자 그만하자
                    사랑하기만해도 시간 없는데

                    머리 아닌 가슴으로 하는 이야기
                    니가 싫다 해도 안 할수가 없는 이야기
                    그만하자 그만하자
                    나의 잔소리가 들려

                    눈에 힘을 주고 겁을 줘봐도
                    내겐 그저 귀여운 얼굴
                    이럴래 자꾸 더는 못 참고
                    정말 화낼지 몰라

                    사랑하다 말거라면 안 할 이야기
                    누구보다 너를 생각하는 마음의 소리
                    화가 나도 소리 쳐도
                    너의 잔소리마저 난 달콤한데

                    사랑해야 할 수 있는 그런 이야기
                    내 말 듣지 않는 너에게는 뻔한 잔소리

                    그만하자 그만하자

                    이런 내 맘을 믿어줘
                </h1>

            </div>

        </div>

    </div>


    <!-- 레인드롭 -->
    <div id="myModal2" class="modal" style="background-color: rgb(207, 207, 207,0.95);">

        <!-- The Close Button -->
        <span class="close2">&times;</span>

        <!-- Modal Content (The Image) -->
        <div class="modal-content">

            <div class="mv">

                <iframe width="700" height="600" src="https://www.youtube.com/embed/EQzqq0LNlto" title="Rain Drop (Rain Drop)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                
            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(210, 156, 233);"></i></li>
                <l1>아이유-Rain Drop</l1>


            </div>
            <div class="cele-lyrics">
                <h1>
                    소나기가 내려온다
                    내 머리위로 갑자기
                    말도 없이 젖어버리겠네

                    추억이 흘러 내린다
                    따라 눈물도 흐른다 바보처럼
                    집에가는길 아직도 멀기만한데
                    우산도 없이 감기걸릴것만 같아

                    이 길이 너에게로
                    돌아갈수 있는 길이면
                    젖어도 좋은데

                    Oh Rain Drop Oh Rain Drop
                    사랑이 참 모자라구나
                    Oh Rain Drop Oh Rain Drop
                    사랑은 저 빗방울처럼

                    모두 까맣게 잊어버리고
                    젖어 버리고선
                    아파하는 감기같은 걸까요

                    지난 여름날 햇살아래 짜증내고
                    뒤돌아 서버린 내 어리석음
                    예전처럼 우산을 들고
                    서있는 너를 본다면
                    참좋을 것같아

                    Oh Rain Drop Oh Rain Drop
                    사랑이 참 모자라구나
                    Oh Rain Drop Oh Rain Drop
                    사랑은 저 빗방울처럼
                    모두 까맣게 잊어버리고
                    젖어 버리고선
                    아파하는 감기같은 걸까요

                    쉽게 내쳐버린 말
                    야속했던 얘기로
                    많이 상처받았을 네가슴 이지만
                    오 아직도 내가 있다면
                    그안에 내가 있다면
                    젖은 발로 달려가고만 싶어

                    oh rain drop oh rain drop
                    사랑이 참 모자라구나

                    oh rain drop oh rain drop
                    사랑은 저 빗방울처럼

                    정말 까맣게 잊어버리고
                    젖어 버리고선

                    아파하는 감기같은 걸까요
                    그런 못된 감기같은 걸까요
                    내사랑은 항상 왜 이럴까요

                </h1>

            </div>

        </div>

    </div>

</body>
</html>