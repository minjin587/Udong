<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/detail_mainContent.css">
<title>Rankign_Lady</title>
</head>
<body>
<div class="detail_inner">
<div class="row">
	<c:forEach var="list" items="${STORE}">
  <div class="side">
  <ul>    
    <li>
    <a href="#"><img src="#" alt="store_image"></a>
    </li>
  </ul>    
  </div> 
 	
 <div class="main">
 	<div>
    <h1><a href="#">${list.store_name }</a></h1>
    <h3>${list.store_addr } </h3>
    </div>
   
    <div>      
    <p>${list.store_context }</p>    
    </div>      
  </div>  
  </c:forEach>
</div>
</div>
</body>
</html>