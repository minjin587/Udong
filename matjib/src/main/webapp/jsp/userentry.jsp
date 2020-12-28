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
		<div>
			<label for="user_id">I D</label>
			<form:input path="user_id" maxlength="20" /><br/>
			<label for="user_pw">P W</label>
			<form:input path="user_pw" maxlength="20" /><br/>
			<input type="submit" value="submit"> <input type="reset"
				value="reset"> <br />
		</div>
	</form:form>
</body>
</html>