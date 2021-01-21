<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
   prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
  <c:forEach var="cnt" items="${storeList }"> 
<div class="detail_inner">
<div class="row">
  <div class="side">
  <ul>    
    <li>
   	 <a href="../total/detail.html"><img src="${pageContext.request.contextPath }/image/${cnt.main_image }" alt="asdf"></a>
    </li>
   </ul>    
  </div> 

 <div class="main">

    <div>
    <h1><a href="../total/detail.html?store_no=${cnt.store_no }">${cnt.store_name }</a></h1>
    <h3>${cnt.store_addr }</h3>
    <h5>${cnt.store_category }</h5>
    </div>
    
    <div>      
    <p>${cnt.store_context }</p>    
    </div>      
  </div>  
</div>

</div>
 </c:forEach>
</body>
</html>