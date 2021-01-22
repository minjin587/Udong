<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/mypage_pw.css">
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->

<meta charset="EUC-KR">
<title>Store_Management</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"
	charset="utf-8"></script>
</head>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
<body>
<div class="store_container">
		<div class="sidebar">           
           <a class="active"  href="../manager/managerstore.html">매장 정보</a>
           <a href="../manager/event.html">이벤트 관리</a> 
        </div>
        
	
<c:forEach var="wor" items="${STORE }">
       <div class="content">           	
       
       
       
       	<table style="border=1px solid black">
       		<tr>
       			<th>매장 번호</th>
       			<th>매장 이름</th>
       			<th>사업주이름</th>
       			<th>주소</th>
       			<th>전화번호</th>       			
       			<th>분류</th>
       			<th>관리자 추천</th>
       		</tr>
       		<tr>       		
       			<td>${wor.store_no }</td>
       			<td><a href = "../manager/storeview.html?NO=${wor.store_no }">${wor.store_name }</a></td>
       			<td>${wor.store_ceo }</td>
       			<td>${wor.store_addr }</td>
       			<td>${wor.store_tel }</td>
       			<td>${wor.store_category }</td>
       			<td>${wor.admin_star }</td>       			
       		</tr>    
       	</table>	
        </div>
       </c:forEach>      
   	</div>
   	
</body>
</html>