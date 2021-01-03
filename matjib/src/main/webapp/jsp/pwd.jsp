<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class = "mypage-user">
	<h2>개인정보 변경</h2>
	<dl class = "ID">
		<dt class = "user-ID"><label>I D</label></dt>
		<dd class = "id1">
		<p class = "userID-p">
			<span class = "userID"><span id = "userID-ID">test</span></span>
		</p>
		</dd>
		<dt class = "user-nick"><label>닉네임</label></dt>
		<dd>
			<input type = "text" value = "test" name = "nickch" class = "inputnick">
			<p class = "usernick-ch"><a href = "#" class = "link" title = "닉네임 변경"><span>닉네임 변경</span></a>
		</dd>
		<dt class = "user-name"><label>이름</label></dt>
		<dd>
			<span>test</span>
		</dd>
		<dt class = "user-phone"><label>휴대폰</label></dt>
		<dd>
			<span class = "phone"><span id = "phone-num">000-0000-0000</span></span>
			<a href = "#" id = "phone" memberbutton = "true" class = "link" title = "휴대폰 변경">변경</a>
			<a href = "#" id = "phonedid" memberbutton = "true" class = "link">삭제</a>
		</dd>
		<dt class = "user-check"><label>본인확인</label></dt>
		<dd>
			test
		</dd>
	</dl>
</div>
</body>
</html>