<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class = "pw-content">
		<h2>개인정보 변경</h2>
		<p class = "pw-pw">개인정보를 변경하기 위해 본인확인을 진행합니다 비밀번호를 입력하세요.</p>
		<div class = "pw-pwcheck">
			<dl>
				<dt class = "pw">
					<label>비밀번호 확인</label>
				</dt>
				<dd class = "pw">
					<input name = "pw-password">
					<input type = "hidden" name = "pw-id">
				</dd>
			</dl>
			<p class = "pw-button"><button type = "button">확인</button>
		</div>
	</div>
</body>
</html>