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
function idOk(){
	opener.document.form.user_id.value=document.form.ID.value;
	opener.document.form.idChecked.value="yes";
	self.close();
}
</script>
</head>
<body>
<h2 align="center">ID�ߺ� Ȯ��</h2>
<form action="../idcheck/idcheck.html" method="get"
	name="form">
���̵� : <input type="text" name="ID" value="${ID }"/>
<input type="submit" value="�ߺ� �˻�"/><br/>
<c:if test="${DUP == 'YES' }">
	<script type="text/javascript">
		opener.document.form.id.value="";
	</script>
	${ID }�� �̹� ������Դϴ�.
</c:if>
<c:if test="${DUP != 'YES' }">
	${ID }�� ��� �����մϴ�.
	<input type="button" value="���" onClick="idOk()"/>
</c:if>
</form>
</body>
</html>