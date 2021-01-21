<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function idOk(){
	opener.document.form.user_id.value=document.form.ID.value;
	opener.document.form.idChecked.value="yes";
	self.close();
}
</script>
</head>
<body>
<h2 align="center">ID중복 확인</h2>
<form action="../idcheck/idcheck.html" method="get"
	name="form">
아이디 : <input type="text" name="ID" value="${ID }"/>
<input type="submit" value="중복 검사"/><br/>
<c:if test="${DUP == 'YES' }">
	<script type="text/javascript">
		opener.document.form.id.value="";
	</script>
	${ID }는 이미 사용중입니다.
</c:if>
<c:if test="${DUP != 'YES' }">
	${ID }는 사용 가능합니다.
	<input type="button" value="사용" onClick="idOk()"/>
</c:if>
</form>
</body>
</html>