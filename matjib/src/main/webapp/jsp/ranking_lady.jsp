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
	<c:forEach var="row" items="${list}">
  <div class="side">
  <ul>    
    <li>
    <a href="#"><img src="#" alt="store_image"></a>
    </li>
    </ul>    
  </div> 
 	
 <div class="main">
 	<div>
    <h1><a href="#">${row.store_no }</a></h1>
    <h3>${row.store_addr } </h3>
    </div>
    
    <div>      
    <p>${row.store_context }</p>    
    </div>      
  </div>  
  </c:forEach>
</div>

<div class="row">
  <div class="side">
  <ul>    
    <li>
    <a href="#"><img src="#" alt="store_image"></a>
    </li>
    </ul>    
  </div> 
 
 <div class="main">
 	<div>
    <h1><a href="#">2. 가게 이름(Store_Num으로 Select)</a></h1>
    <h3>Addr or Keyword OTC...(컨텐츠 생각중)</h3>
    </div>
    
    <div>      
    <p>(ID)세부내용 or 리뷰 : 이 가게는 어디에 위치한 가게로 써 대표매뉴는 
    어쩌고 저쩌고 입니다. 사장님께서 친철해서 편안하게 식사하고 왔슴</p>    
    </div>      
  </div>  
</div>
</div>

</body>
</html>