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
<h2 align="center">ID�ߺ� Ȯ��</h2>
<form action="../idcheck/nicknamecheck.html" method="get"
	name="form">
���̵� : <input type="text" name="nickname" value="${nickname }"/>
<input type="submit" value="�ߺ� �˻�"/><br/>
<c:if test="${DUP == 'YES' }">
	<script type="text/javascript">
		opener.document.form.nickname.value="";
	</script>
	${nickname }�� �̹� ������Դϴ�.
</c:if>
<c:if test="${DUP != 'YES' }">
	${nickname }�� ��� �����մϴ�.
	<input type="button" value="���" onClick="nicknameOk()"/>
</c:if>
</form>
</body>
</html>