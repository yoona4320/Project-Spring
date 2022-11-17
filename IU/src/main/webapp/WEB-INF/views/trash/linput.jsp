<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

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

<meta charset="UTF-8">
<title>letter input</title>
</head>
<body>
<form action="linputsave" method="post" name="form3">
<h1>편지작성</h1>
작성자<input type="text" name="LT_WRITER" value="${member.MEM_NICKNAME}"><br>
제목<input type="text" name="LT_TITLE"><br>
내용<textarea name="LT_CONTENT" rows="5" cols="20">
</textarea><br>
<input type="button" value="편지작성" onclick="check3()"><br>
</form>
</body>
</html>