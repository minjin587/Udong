<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function FailedLogin(){
   alert("아이디와 비밀번호가 일치하지 않습니다.");
   window.location.href = "../login/login.html";
}

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="FailedLogin()">

</body>
</html>