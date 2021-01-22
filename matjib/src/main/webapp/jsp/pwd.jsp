<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/mypage_pw.css">
<meta charset="EUC-KR">
<title>Store_Regist</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"
	charset="utf-8"></script>
</head>
<body>

	<div class="store_container">
		<form action="../mypageCh/mypageCh.html">
			<div class="sidebar">
				<a class="active" href="../jsp/mypage.html">개인정보 변경</a> <a
					href="../jsp/password.html">비밀번호 변경</a>
				
			</div>
	

	<div class="content">
		<div class="row">
			<div class="col-25">
				<label for="user-id">사용자 ID</label>
			</div>
			<div class="col-75">
				<input type="text" id="user-id" name="user-id" value="${ USER.user_id}" readonly/>
			</div>
		</div>
		
		<div class="row">
			<div class="col-25">
				<label for="user-nick">닉네임</label>
			</div>
			<div class="col-75">
				<input type="text" id="nickname"
						name="nickname" placeholder="닉네임을 입력해주세요"
						value="${USER.nickname }"> <input class="btn"
						onclick="nameCheck()" type="button" value="변경" />
			</div>
		</div>
		
		<div class="row">
			<div class="col-25">
				<label for="user-name">이  름</label>
			</div>
			<div class="col-75">
				<input type="text" id="user-name" name="user-name" value="${USER.name }" readonly/>
			</div>
		</div>
		
		<div class="row">
			<div class="col-25">
				<label for="user-phone">핸드폰 번호</label>
			</div>
			<div class="col-75">
				 <input	type="text" id="ph" name="phone" placeholder="저장된 번호가 없습니다"
						value="${USER.phone }"> <input class="btn"
						onclick="phoneCheck()" type="button" value="변경" />						
			</div>
		</div>
			<div class="store_bottom">
					<input class="btn" type="submit" value="저장" />
			</div>		
			</div>
		</form>
	</div>		
		<script type="text/javascript">
			function nameCheck() {
				var url = "../nickname/nickcheck.html?nickname="
						+ nickname.value;
				window.open(url, "_blank", "width=1000,height=500");
			}
			function phoneCheck() {
				var url = "../phone/phonecheck.html?PHONE=" + ph.value;
				window.open(url, "_blank", "width=1000,height=500");
			}
		</script>	
</body>
</html>