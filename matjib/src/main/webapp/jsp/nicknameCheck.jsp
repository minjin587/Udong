<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function nicknameOk(){
	opener.document.form.nickname.value=document.form.nickname.value;
	opener.document.form.nicknameChecked.value="yes";
	self.close();
}
</script>
</head>
<body>
<h2 align="center">ID중복 확인</h2>
<form action="../idcheck/nicknamecheck.html" method="get"
	name="form">
아이디 : <input type="text" name="nickname" value="${nickname }"/>
<input type="submit" value="중복 검사"/><br/>
<c:if test="${DUP == 'YES' }">
	<script type="text/javascript">
		opener.document.form.nickname.value="";
	</script>
	${nickname }는 이미 사용중입니다.
</c:if>
<c:if test="${DUP != 'YES' }">
	${nickname }는 사용 가능합니다.
	<input type="button" value="사용" onClick="nicknameOk()"/>
</c:if>
</form>
</body>
</html>