<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/mypage_pw.css">
</head>
<body>
	<div class = "pw-content">
		<h2>비밀번호 변경</h2>
		<p class = "pw-pw">변경할 비밀번호를 입력하세요.</p>
		<div class = "pw-pwcheck">
			<form method = "post" action = "../jsp/pword.html">
				<label>비밀번호: </label>
				<input type = "hidden" name = "user_id" value = "${loginUser }"/>
				<input name = "password" id = "pwd" type = "password">
				<button type = "submit">확인</button>
			</form>
		</div>
	</div>
</body>
</html>