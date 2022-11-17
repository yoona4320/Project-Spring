<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="untouchable">
<head>

<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script>
	<link href="${pageContext.request.contextPath}/resources/css/album.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/resources/css/melon.js" defer></script>

<title>JogakJip</title>
</head>
<body>

	<div class="bg-image" style="background: url(melonimage/조각.jpg) repeat no-repeat center;  background-size: cover;  ">
        <div class="filter-blur"></div>
        <div class="backtomenu"><a href="#"><i class="fa-solid fa-arrow-left-long"></i></a></div>

        <div class="album-cover">

            <div class="backtomenu"><a href="melon"><i class="fa-solid fa-arrow-left-long"></i></a></div>

            <img src="./melonimage/조각.jpg" alt="celebrity" class="album-img">
            <div class="song-info">

                <p>아이유</p>
                <p>조각집</p>

                <div class="track-list">
                    <span style="font-size: 43px;">앨범수록곡</span><br>

                    <ul>
                        <li id="musicbtn" class="musicbtn">
                            "드라마"
                        </li>
                        <li id="musicbtn-sec" class="musicbtn">
                            "정거장"
                        </li>

                        <div class="notice-title">
                            <li style="font-size: 22px; color: rgb(210, 156, 233); ">Title</li>
                            <li id="musicbtn-thi" class="musicbtn">
                                "겨울잠"
                            </li>
                        </div>
                        <li id="musicbtn-s" class="musicbtn">
                            "너"
                        </li>
                        <li id="musicbtn-sa" class="musicbtn">
                            "러브레터"
                        </li>



                    </ul>
                </div>
            </div>

        </div>

    </div>


    <!-- 드라마 -->
    <div id="myModal" class="modal" style="background-color: rgb(207, 207, 207,0.95);">

        <!-- The Close Button -->
        <span class="close">&times;</span>

        <!-- Modal Content (The Image) -->
        <div class="modal-content">

            <div class="mv">
                <iframe width="700" height="600" src="https://www.youtube.com/embed/AkugjXUj5sM" 
                title="YouTube video player" frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(222, 106, 201);"></i></li>
                <l1>아이유-드라마</l1>


            </div>
            <div class="cele-lyrics">
                <h1>
                    나도 한때는 그이의 손을 잡고
                    내가 온 세상 주인공이 된 듯
                    꽃송이의 꽃잎 하나하나까지
                    모두 날 위해 피어났지

                    올림픽대로 뚝섬 유원지
                    서촌 골목골목 예쁜 식당
                    나를 휘청거리게 만든
                    주옥같은 대사들

                    다시 누군가 사랑할 수 있을까
                    예쁘다는 말 들을 수 있을까
                    하루 단 하루만 기회가 온다면
                    죽을힘을 다해 빛나리

                    언제부턴가 급격하게
                    단조로 바뀌던 배경음악
                    조명이 꺼진 세트장에
                    혼자 남겨진 나는

                    단역을 맡은 그냥 평범한 여자
                    꽃도 하늘도 한강도 거짓말
                    나의 드라마는 또 이렇게 끝나
                    나왔는지조차 모르게

                    끝났는지조차 모르게
                </h1>

            </div>

        </div>

    </div>


    <!--정거장-->
    <div id="myModal2" class="modal" style="background-color: rgb(207, 207, 207,0.95);">

        <!-- The Close Button -->
        <span class="close2">&times;</span>

        <div class="modal-content">

            <div class="mv">

                <iframe width="700" height="600" src="https://www.youtube.com/embed/bJYW68ogcaA" 
                title="YouTube video player" frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(222, 106, 201);"></i></li>
                <l1>아이유-정거장</l1>


            </div>
            <div class="cele-lyrics">
                <h1>
                    다음 정거장에서 만나게 될까
                    그리워했던 얼굴을
                    다음 파란불에는 만나게 될까
                    그리곤 했던 풍경을

                    해는 정해진 시간에 떨어지고
                    거리는 비어 가는데
                    단 한 사람 어제와 같은 그 자리
                    떠날 줄을 모르네

                    투둑투둑 무심하게 빗줄기 세로로 내리고
                    빗금을 따라 무거운 한숨 떨어지는데

                    다음 정거장에서 만나게 될까
                    그리워했던 사람을
                    다음 파란불에는 만나게 될까
                    그리곤 했던 얼굴을

                    한 뼘 한 뼘 머리 위로 꽃노을 발갛게 번지고
                    황혼을 따라 춤추는 그늘 길어지는데

                    다음 정거장에서 만나게 될까
                    그리워했던 바람을
                    다음 파란불에는 만나게 될까
                    그리곤 했던 기억을

                    아님 이다음 세상에나 닿을까
                    떠난 적 없는 그곳을
                </h1>

            </div>

        </div>





    </div>


    <!--겨울잠-->
    <div id="myModal3" class="modal" style="background-color: rgb(207, 207, 207,0.95);">

        <!-- The Close Button -->
        <span class="close3">&times;</span>

        <div class="modal-content">

            <div class="mv">


                <iframe width="700" height="600" src="https://www.youtube.com/embed/FXfvbMEWkhk?list=OLAK5uy_kjiTbls6G-Rffnw1a-CEFv_wCI9RuxdrE" 
                title="Winter Sleep (겨울잠)" frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(222, 106, 201);"></i></li>
                <l1>아이유-겨울잠</l1>


            </div>
            <div class="cele-lyrics">
                <h1>
                    때 이른 봄 몇 송이 꺾어다
                    너의 방 문 앞에 두었어
                    긴 잠 실컷 자고 나오면
                    그때쯤엔 예쁘게 피어 있겠다

                    별 띄운 여름 한 컵 따라다
                    너의 머리맡에 두었어
                    금세 다 녹아버릴 텐데
                    너는 아직 혼자 쉬고 싶은가 봐

                    너 없이 보는 첫 봄이 여름이
                    괜히 왜 이렇게 예쁘니
                    다 가기 전에 널 보여줘야 하는데
                    음 꼭 봐야 하는데

                    내게 기대어 조각잠을 자던
                    그 모습 그대로 잠들었구나
                    무슨 꿈을 꾸니
                    깨어나면 이야기해 줄 거지
                    언제나의 아침처럼 음

                    빼곡한 가을 한 장 접어다
                    너의 우체통에 넣었어
                    가장 좋았던 문장 아래 밑줄 그어
                    나 만나면 읽어줄래

                    새하얀 겨울 한 숨 속에다
                    나의 혼잣말을 담았어
                    줄곧 잘 참아내다가도
                    가끔은 철없이 보고 싶어

                    새삼 차가운 연말의 공기가
                    뼈 틈 사이사이 시려와
                    움츠려 있을 너의 그 마른 어깨를
                    꼭 안아줘야 하는데

                    내게 기대어 조각잠을 자던
                    그 모습 그대로 잠들었구나
                    무슨 꿈을 꾸니
                    깨어나면 이야기해 줄 거지
                    언제나의 아침처럼 음
                </h1>

            </div>

        </div>





    </div>


    <!--너-->
    <div id="myModal4" class="modal" style="background-color: rgb(207, 207, 207,0.95);">

        <!-- The Close Button -->
        <span class="close4">&times;</span>

        <div class="modal-content">

            <div class="mv">
                
                <iframe width="700" height="600" src="https://www.youtube.com/embed/HP4kVAiQLEw?list=OLAK5uy_kjiTbls6G-Rffnw1a-CEFv_wCI9RuxdrE" 
                title="You (너)" frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                
            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(222, 106, 201);"></i></li>
                <l1>아이유-너</l1>


            </div>
            <div class="cele-lyrics">
                <h1>
                    아득히 떨어진 곳에서
                    아무 관계없는 것들을 보며
                    조금 쓸쓸한 기분으로
                    나는 너를 보고픈 너를 떠올린다

                    아 애달프다 일부러 그러나
                    넌 어떨까 오늘도 어여쁜가 너 너

                    어딘가 너 있는 곳에도
                    여기와 똑같은 하늘이 드나
                    문득 걸음이 멈춰지면
                    그러면 너도 잠시 나를 떠올려 주라

                    다 너 같다 이리도 많을까
                    뜨고 흐르고 설키고 떨어진다 너 너

                    아득히 떨어진 곳에서
                    끝없이 흐노는 누구를 알까
                    별 하나 없는 새카만 밤
                    나는 너를 유일한 너를 떠올린다
                </h1>

            </div>

        </div>





    </div>


    <!--러브레터-->
    <div id="myModal5" class="modal" style="background-color: rgb(207, 207, 207,0.95);">

        <!-- The Close Button -->
        <span class="close5">&times;</span>

        <div class="modal-content">

            <div class="mv">
                
                    <iframe width="700" height="600" src="https://www.youtube.com/embed/4x7BrWTUmZo?list=OLAK5uy_kjiTbls6G-Rffnw1a-CEFv_wCI9RuxdrE" 
                    title="Love Letter (러브레터)" frameborder="0" 
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

            </div>

            <div class="mv-title">

                <li class="artist"><i class="fa-sharp fa-solid fa-music"
                        style="font-size: 25px; color: rgb(222, 106, 201);"></i></li>
                <l1>아이유-러브레터</l1>


            </div>
            <div class="cele-lyrics">
                <h1>
                    골목길 머뭇하던 첫 안녕을 기억하오
                    그날의 끄덕임을 난 잊을 수 없다오
                    
                    길가에 내린 새벽 그 고요를 기억하오
                    그날의 다섯시를 난 잊을 수 없다오
                    
                    반듯하게 내린 기다란 속눈썹 아래
                    몹시도 사랑히 적어둔 글씨들에
                    
                    이따금 불러주던 형편없는 휘파람에
                    그 모든 나의 자리에 나 머물러 있다오
                    
                    
                    아끼던 연필로 그어놓은 밑줄 아래
                    우리 둘 나란히 적어둔 이름들에
                    
                    무심한 걱정으로 묶어주던 신발끈에
                    그 모든 나의 자리에 나 머물러 있다오
                    
                    좋아하던 봄 노래와 내리는 눈송이에도
                    어디보다 그대 안에 나 머물러 있다오
                    
                    나 머물러 있다오 그대 울지 마시오
                </h1>

            </div>

        </div>





    </div>

</body>
</html>