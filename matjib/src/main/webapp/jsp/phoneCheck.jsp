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
	opener.document.getElementById("ph").value = document.getElementById("phone").value
	self.close();
}
</script>
</head>
<body>
<h2 align = "center">중복확인</h2>
<form action = "../phone/phonecheck.html" method = "get" name = "test">
전화번호: <input type= "text" id = "phone" name = "PHONE" value = "${PHONE }"/>
<input type = "submit" value = "중복 검사"/><br/>
<c:if test="${PH != 'OK' }">
	<script type="text/javascript">
  		opener.test.value = "";
	</script> 
	${PHONE }는 이미 사용중입니다
</c:if>
<c:if test="${PH == 'OK' }">
	${PHONE }는 사용 가능합니다
	<input type = "button" value = "사용" onClick="idOk()"/>
</c:if>
</form>
</body>
</html>