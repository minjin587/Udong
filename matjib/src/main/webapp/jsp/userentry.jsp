<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>userEntry</title>
</head>
<body>
	<form:form name="frm" modelAttribute="user" 
	method="POST" action="../entry/entry.html">
		<div align="center">
			<a href="../entry/normalUser.html">
				<img src="../img/entry_personal.png" />
			</a>
			<a href="../entry/managerlUser.html">
				<img src="../img/entry_ceo.png" />
			</a>
		</div>
	</form:form>
</body>
</html>