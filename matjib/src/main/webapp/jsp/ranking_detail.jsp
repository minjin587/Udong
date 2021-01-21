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
   <c:forEach var="row" items="${StoreList}">
  <div class="side">
  <ul>    
    <li>
    <a href="#"><img src="${pageContext.request.contextPath }/image/${row.main_image }" alt="asdf"></a>
    </li>
    </ul>    
  </div> 
    
 <div class="main">
    <div>
    <h1><a href="../category/korean_detail.html?store_no=${row.store_no }">${row.store_no }.${row.store_name }</a></h1>
    <h3>${row.store_addr } </h3>
    </div>
    
    <div>      
    <p>${row.store_context }</p>    
    </div>      
  </div>  
  </c:forEach>
</div>
</div>

</body>
</html>