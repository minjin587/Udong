<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/mypage_pw.css">
</head>
<body>
<script type="text/javascript">
	function nameCheck() {
		var url = "../nickname/nickcheck.html?NAME="+chan.value;
		window.open(url,"_blank","width=1000,height=500");
	}
	function phoneCheck() {
		var url = "../phone/phonecheck.html?PHONE="+ph.value;
		window.open(url,"_blank","width=1000,height=500");
	}
</script>
<div class = "mypage-user">
	<div class = "user-main">
		<div class = "col-1">
			<label for = "user-id">I D</label>
		</div>
		<div class = "col-2">
			<span class = "col-3">
				<span >${USER.user_id }</span>
			</span>
		</div>
		<div class = "col-1">
			<label for = "user-nick">닉네임</label> 
		</div>
		<div class = "col-2">
			<span class = "col-3 col-4">
				<input type = "text" id = "chan" name="nickname" placeholder="닉네임을 입력해주세요" value = "${USER.nickname }">
				<button class = "sss" onclick="nameCheck()">변경</button>
			</span>
		</div>
		<div class = "col-1">
			<label for = "user-name">이 름</label>
		</div>
		<div class = "col-2">
			<span class = "col-3">
				<span >${USER.name }</span>
			</span>
		</div>
		<div class = "col-1">
			<label for = "user-phone">휴대폰</label>
		</div>
		<div class = "col-2">
			<span class = "col-3 col-4">
<%-- 				<input type = "hidden" id = "phone" name = "phone" value = "${USER.phone }"> --%>
<%-- 				<span >${USER.phone }</span> --%>
				<input type = "text" id = "ph" name = "phone" placeholder="저장된 번호가 없습니다" value = "${USER.phone }">
				<button class = "sss2" onclick="phoneCheck()">변경</button>
				<button class = "">삭제</button>
			</span>
		</div>
		<div class = "col-1">
			<label for = "user-check">본인확인</label>
		</div>
		<div class = "col-2">
			<span class = "col-3">
				<span >test</span>
			</span>
		</div>
		<a href = "../mypageCh/mypageCh.html"><input class = "submit" type = "submit" value = "저장"/></a>
	</div>
</div>
</body>
</html>