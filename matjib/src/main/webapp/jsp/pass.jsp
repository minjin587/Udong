<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/mypage_pw.css">
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->

<meta charset="EUC-KR">
<title>Store_Management</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"
	charset="utf-8"></script>
</head>
<body>
	
	<div class="store_container">
		<form action="../jsp/pword.html" method="post">
			<div class="sidebar">
				<a  href="../jsp/mypage.html">개인정보 변경</a> 
				<a class="active" href="../jsp/password.html">비밀번호 변경</a> 
				
			</div>
	<div class="content">
		<div class="row">
			<div class="col-25">
				<label >변경할 비밀번호를 입력하세요</label>
			</div>
			<div class="col-75">
				<input type = "hidden" name = "user_id" value = "${loginUser }"/>
				<input name = "password" id = "pwd" type = "password">
				<button class="btn" type ="submit">확인</button>
			</div>
			</div>
		</div>
		</form>
	</div>	
	
</body>
</html>