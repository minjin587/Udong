<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function idOk(){
	opener.document.getElementById("nickname").value = document.getElementById("nickname").value
	self.close();
}
</script>
</head>
<body>
<h2 align = "center">중복확인</h2>
<form action = "../nickname/nickcheck.html" method = "get" name = "test">
아이디: <input type= "text" id = "nickname" name = "nickname" value = "${nick }"/>
<input type = "submit" value = "중복 검사"/><br/>
<c:if test="${nickname != 'OK' }">
<!-- 	<script type="text/javascript"> -->
<!--  		opener.test.value = ""; -->
<!-- 	</script> -->
	${nick }는 이미 사용중입니다
</c:if>
<c:if test="${nickname == 'OK' }">
	${nick }는 사용 가능합니다
	<input type = "button" value = "사용" onClick="idOk()"/>
</c:if>
</form>
</body>
</html>