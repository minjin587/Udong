<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/entryForm.css">
<title>Insert title here</title>
</head>
<body>
	<div class="store_container">
		<form action="../entry/entry.html" class="form" id="fileupload"
			enctype="multipart/form-data" method="post">

			<div class="sidebar">
				 <a class="active" href="#home">일반 회원 가입</a>
				 <a href="#">기업 회원 가입</a>				 
			</div>
			
			<div class="content">			
			<div class="row">
				<div class="col-25">
				<label for="name">이름 :</label> 
				</div>
				<div class="col-75">
				 <input type="text" name="name"	id="name" placeholder="이름을  입력하세요 ">
				</div>
			</div>
			
			
			<div class="row">
				<div class="col-25">
					<label for="id">아이디 : </label>
				</div>		
				<div class="col-75">
					<input type="text" id="id"
					name="user_id" placeholder="아이디를 입력해 주세요.">
				</div>
			</div>
			
			<div class="row">
				<div class="col-25">
					<label for="password">비밀번호 : </label>
				</div>
				<div class="col-75">
				<input type="password" name="password" id="password" class="password" placeholder="비밀번호를 입력하세요 .">
				</div>
			</div>			
		
			<div class="row">
				<div class="col-25">
					<label for="passwordCheck" >비밀번호 확인 : </label>
				</div>
				<div class="col-75">
					<input type="password"
						name="passwordCheck" id="passwordCheck" class="passwordCheck" placeholder="확인 비밀번호를 입력하세요.">
				</div>
			</div>
			
			
			<div class="row">
				<div class="col-25">
					<label for="nickname">닉네임 : </label></div>
				<div class="col-75">
					<input type="text" id="nickname" name="nickname" placeholder="사용할 닉네임을 입력해주세요 .">
				</div>
			</div>
			
			
			<div class="row">
				<div class="col-25">
					<label for="email">이메일 : </label>
				</div>
				<div class="col-75">
					<input type="email" id="email" name="email" placeholder="이메일 주소를 입력하세요."> 
				</div>	
					
			</div>		
			
			<div class="row tel">
				<div class="col-25">
					<label for="phone">전화번호 : </label>
				</div>	
				<div class="col-25">
				<select path="phone1" name="phone1">
					<option value="02">02</option>
					<option value="02">031</option>
					<option value="02">010</option>
				</select>
				
				
				</div>			
				<div class="col-25">
				<input type="text" class="phone_back" name="phone2">
				</div>
				<div class="col-25">
				<input type="text" class="phone_back" name="phone3">
				</div>
			</div>
			
			<div class="row">
				<div class="col-25">
					<label for="gender">성별 : </label> 
				</div>	
				<div class="col-75">	
					<input type="radio" value="M" name="gender" checked id="gender"> 남자
					
					<input type="radio"	value="F" name="gender"> 여자 
				</div>
			</div>
			
			
			<div class="row">
				<div class="col-25">
					<label for="birth">생일 : </label>
				</div>	
				<div class="col-65">
					 <input type="date" id="birth" name="birth">
				</div>
			</div>
			
			<div class="row">
				<div class="col-25">
					<label for="profile">프로필 : </label>
				</div>
				<div class="col-75">
				 <img id="output_image" />
					 <input type="file" accept="image/*"
					onchange="preview_image(event)" name="image">
				</div>
			</div>
			
			
			
			<div class="store_bottom">
			<input type="hidden" name="grade" value="N">
			<input type="submit" value="가입하기">
			</div>
			
			
			
			
			</div>
		</form>

	</div>
	<script src="../js/entry.js"></script>
</body>
</html>