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
   method="POST" action="../entry/entry.html" >
      <div align="center">
         <a href="../entry/normalUser.html"">�Ϲ� ȸ�� ������ �����!(�̹���) </a>
         <a href="../entry/managerlUser.html">��� ȸ�� ������ �����!(�̹���) </a>
      </div>
   </form:form>
</body>
</html>