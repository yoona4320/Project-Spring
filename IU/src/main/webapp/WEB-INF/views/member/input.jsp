<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script type="text/javascript">

	function check() 
	{
		var f = document.form1;		//임의의 변수 설정		
		
		//ID
		var vid = /^[A-Za-z0-9]{2,10}$/;	//대소문자숫자 2~10자리
		var cid = document.form1.MEM_ID.value;
		if(cid=="")	//공백 체크
			{
				alert("아이디를 입력해주세요.");
				document.form1.MEM_ID.select();
				return false;
			}
		if(!vid.test(cid))
			{
				alert("아이디는 영문자 및 숫자 2자리부터 10자리까지만 입력가능합니다.");
				document.form1.MEM_ID.select();
				return false;
			}
		
		//PW
		var vpw = /^[A-Za-z0-9]{2,10}$/;	//대소문자숫자 2~10자 입력 가능
		var cpw = document.form1.MEM_PW.value;
		if(cpw=="")
			{
				alert("비밀번호를 입력해주세요.");
				document.form1.MEM_PW.select();
				return false;
			}
		if(!vpw.test(cpw))
			{
				alert("비밀번호는 영문 및 숫자 2자리부터 10자리까지 입력할수있습니다.");
				document.form1.MEM_PW.select();
				return false;
			}
		
		//name
		var vname = /^[가-힣]{2,4}$/;		//한글만 2-4자 입력 가능
		var cname = document.form1.MEM_NAME.value;
		if(cname=="")
			{
				alert("이름을 입력해주세요.");
				document.form1.MEM_NAME.select();
				return false;
			}
		
		
		//닉네임
		var vnick = /^[A-Za-z0-9가-힣]{2,10}$/;
		var cnick = document.form1.MEM_NICKNAME.value;
		if(cnick=="")
			{
				alert("닉네임을 입력해주세요.");
				document.form1.MEM_NICKNAME.select();
				return false;
			}
		if(!vnick.test(cnick))
			{
				alert("닉네임은 영문 한글 숫자 2자리부터 10자리까지 입력할수있습니다.");
				document.form1.MEM_NICKNAME.select();
				return false;
			}
		
		//성별
		var vsb = /^[A-Za-z0-9가-힣]/;
		var csb = document.form1.MEM_SB.value;
		if(csb=="")
			{
				alert("성별을 선택해주세요.");
				document.form1.MEM_SB.select();
				return false;
			}
		
		//생일
		var vbirth = /^[A-Za-z0-9가-힣]/;
		var cbirth = document.form1.MEM_BIRTH.value;
		if(cbirth=="")
			{
				alert("생일을 선택해주세요.");
				document.form1.MEM_BIRTH.select();
				return false;
			}
		
		//이메일
		var vemail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		var cemail = document.form1.MEM_EMAIL.value;
		if(cemail=="")
			{
				alert("이메일을 입력해주세요.");
				document.form1.MEM_EMAIL.select();
				return false;
			}
		if(!vemail.test(cemail))
			{
				alert("이메일의 형식에 맞지 않습니다.");
				document.form1.MEM_EMAIL.select();
				return false;
			}
		
		//주소		
		var vaddress = /^[가-힣]{2,4}$/;
		var caddress = document.form1.MEM_ADDRESS.value;
		if(caddress=="")
			{
				alert("주소를 입력해주세요.");
				document.form1.MEM_ADDRESS.select();
				return false;
			}
		
		
		//전화번호
		var vtel = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;	
		var ctel = document.form1.MEM_TEL.value;
		if(ctel=="")
			{
				alert("전화번호를 입력해주세요.")
				document.form1.MEM_TEL.select();
				return false;
			}
		
		if(!vtel.test(ctel))
			{
				alert("전화번호 형식에 맞지 않습니다.");
				document.form1.MEM_TEL.select();
				return false;
			}
		
		alert("회원가입이 완료되었습니다!");
		f.submit();
	}

	$(function() 
	{
		$("#IdChk").click(function()
		{
			var MEM_ID = $("#MEM_ID").val();
		
			$.ajax
			({
				type:"post",
				async:false,
				url:"IdChk",
				dataType:"json",
				data:{"MEM_ID":MEM_ID},	//넘어가는게 "MEM_ID" / var값
				success:function(cnt) 
				{
					if(MEM_ID=="")   //공백 체크
                    {
                    	alert("아이디를 입력해주세요.");
                    	return false;
                    }      
					
				 	var vnt=JSON.parse(cnt);
				    if(cnt==0)
				    {
				    	alert("사용 가능한 ID입니다.");
				    }
				    else
				    {
				    	alert("이미 사용중인 ID입니다.");
				        $("#MEM_ID").focus();
				        $("#MEM_ID").val('');
					}
				},
				error:function()
				{
					alert("전송실패!");
				}
				         
			});         
		});
		
		
		$("#NicChk").click(function()
		{
			var MEM_NICKNAME = $("#MEM_NICKNAME").val();
						     
			$.ajax
			({
				type:"post",
				async:false,
				url:"NickChk",
				dataType:"json",
				data:{"MEM_NICKNAME":MEM_NICKNAME},	//넘어가는게 "MEM_ID" / var값
				success:function(cnt1) 
				{
					if(MEM_NICKNAME=="")   //공백 체크
                    {
                    alert("닉네임을 입력해주세요.");
                    return false;
                    }      
					
					var vnt=JSON.parse(cnt1);
					if(cnt1==0)
					{
						alert("사용 가능한 닉네임입니다.");
					}
					else
					{
						alert("이미 사용중인 닉네임입니다.");
						$("#MEM_NICKNAME").focus();
						$("#MEM_NICKNAME").val('');
					}
				},
				error:function()
				{
					alert("전송실패!");
				}
						         
			});         
		});
		
	});
	
</script>

	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
    
<title>회원가입</title>
</head>
<body>
<input type="hidden" name="MEM_ID">

	<section class="login-form">
	
	<!-- 1. 로고 -->
	<h1>회원가입</h1>
	<form action="inputsave" method="post" name="form1">
	
	
	<!-- 2. 필드 -->
	<div class="int-area">
		<input type="text" name="MEM_ID" id="MEM_ID" autocomplete="off" required>
		<label for="MEM_ID">USER NAME</label>
		<button id="IdChk" type="button" class="check-btn">중복확인</button> 
	</div>	

	<div class="int-area">
		<input type="password" name="MEM_PW"  autocomplete="off" required>
		<label for="MEM_PW">PASSWORD</label>
	</div>
	
	<div class="int-area">
		<input type="text" name="MEM_NAME" autocomplete="off" required>
		<label for="MEM_NAME">이름</label>
	</div>
	
	<div class="int-area">
		<input type="text" name="MEM_NICKNAME" id="MEM_NICKNAME" autocomplete="off" required>
		<label for="MEM_NICKNAME">닉네임</label>
		<button id="NicChk" type="button" class="check-btn">중복확인</button>
	</div>
	
	
	<!-- 3. 필드(성별) -->
	<div class="birth-area">
		<div>
			<label for="MEM_SB">성별</label>&emsp;&emsp;
			<input type="radio" name="MEM_SB" value="남성"  autocomplete="off" required>
				<label for="MEM_SB">남성</label>&emsp;&emsp;
			<input type="radio" name="MEM_SB" value="여성" autocomplete="off" required>
			<label for="MEM_SB">여성</label> 
		</div>	
	</div>
	
	
	<!-- 4. 필드(생년월일) -->
	<div class="int-area">
		<div>
			<h2>생년월일</h2> 
			<input type="date" name="MEM_BIRTH"  autocomplete="off" required >
			<label for="mem_birth"></label>
		</div>
	</div>
	
	
	<!-- 5. 이메일_전화번호 -->
	<div class="int-area">
		<input type="email" name="MEM_EMAIL"  autocomplete="off" required>
		<label for="MEM_email">이메일</label>
	</div>
	
	<div class="int-area">
		<input type="text" name="MEM_ADDRESS"  autocomplete="off" required>
		<label for="MEM_ADDRESS">주소</label>
	</div>
	
	<div class="int-area">
		<input type="text" name="MEM_TEL"  autocomplete="off" required>
		<label for="MEM_TEL">전화번호</label>
	</div>
	
	
	<!-- 6. 가입하기 버튼 -->
	<div class="btn-area">
		<input type="button" value="가입하기" onclick="check()" class="login-btn">
	</div>

	<div class="caption">
	<a href="index">돌아가기</a>
	</div>

	</form>
	
	</section>
</body>
</html>