<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="../css/entry.css">
<title>Insert title here</title>
</head>
<body>
	<div class="">
		<form action="../entry/entry.html" class="form" id="fileupload"
			enctype="multipart/form-data" method="post">


			<div class="seperate">
				<label for="profile">프로필</label><br> <img id="output_image" />
				<br> <input type="file" accept="image/*"
					onchange="preview_image(event)" name="image">
			</div>
			<div class="seperate">
				<label for="name">이름</label> : <input type="text" name="name"
					id="name">
			</div>
			<div class="seperate">
				<label for="id">아이디</label> :<input type="text" id="id"
					name="user_id">
			</div>
			<div class="seperate">
				<label for="password">비밀번호</label> :<input type="password"
					name="password" id="password" class="password"><br>
			</div>
			<div class="seperate">
				<label for="passwordCheck">비밀번호 확인</label> :<input type="password"
					name="passwordCheck" id="passwordCheck" class="passwordCheck">
			</div>
			<div class="seperate">
				<label for="nickname">닉네임</label> :<input type="text" id="nickname"
					name="nickname">
			</div>
			<div class="seperate">
				<label for="email">이메일</label> :<input type="email" id="email"
					name="email"><br> <label for="phone">전화번호</label> :
				<select path="phone1" name="phone1">
					<option value="02">02</option>
					<option value="02">031</option>
					<option value="02">010</option>
				</select> - <input type="text" class="phone_back" name="phone2">-<input
					type="text" class="phone_back" name="phone3">
			</div>
			<div class="seperate">
				<label for="gender">성별</label> :남 <input type="radio" value="M"
					name="gender" checked id="gender"> 여 <input type="radio"
					value="F" name="gender">
			</div>
			<div class="seperate">
				<label for="birth">생일</label> :<input type="date" id="birth"
					name="birth">
			</div>
			<input type="hidden" name="grade" value="N">
			<input type="submit" value="가입하기">
		</form>

	</div>
	<script src="../js/entry.js"></script>
</body>
</html>