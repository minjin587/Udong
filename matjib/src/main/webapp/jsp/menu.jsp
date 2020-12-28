<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class = "body">
	<div class = "body-main">
		<p>인기 메뉴 TOP 100</p>
		<div class ="body-image">
<%-- 			<c:forEach var= "image-num" item= "${list} varStatus="??"> --%>
			<div class = "image">
<!-- 			<img alt="" src=""> -->
				<img alt="" src="../ima/slide1.png" height="100" width="100"/>
<%-- 			<p>${numberlist} : <c:out value="${list }"/> --%>
				<p>제목</p> 
			</div>
<%-- 			</c:forEach> --%>
		</div>
	</div>
</div>
</body>
</html>