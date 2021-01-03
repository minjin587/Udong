<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class = "mypage">
	<div class = "mypage-body">
		<div class ="mypage-main">
			<h2>내 정보관리</h2>
			<ul class = "mypage-item">
				<li class ="sub1"><a href = "../jsp/mypagemain.html">개인정보 변경</a></li>
				<li class ="sub2"><a href = "#">비밀번호 변경</a></li>
				<li class ="sub3"><a href = "#">결제내용 확인</a></li>
				<li class ="sub4"><a href = "#">예약정보 확인</a></li>
			</ul>
		</div>
		<div class = "mypage-content">
			<c:choose>
				<c:when test="${BODY2 != null }">
					<jsp:include page="${BODY2 }"></jsp:include>
				</c:when>
				<c:otherwise>
					<jsp:include page="pwd.jsp"></jsp:include>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
</body>
</html>