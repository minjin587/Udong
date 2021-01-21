<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/manager_store.css">
<title>Insert title here</title>
</head>
<body>
<div class="manager_container">
		<div class="sidebar">
           <a href="../manager/managerdetail.html">일반 회원</a>
           <a class="active"  href="../manager/managerstore.html">매장 정보</a> 
        </div>


        <div class="content">
        	<div class = "store_search">
        		<form action="#" method="POST">
					<input type="email" name="email" placeholder="Write your Text!" />
					<input type="submit" value="Send" class="btn" />
				</form>
        	</div>
        	<table class = "store_di">
        		<tr>
        			<th>매장 번호:</th>
        			<th>매장 이름:</th>
        			<th>사장: </th>
        			<th>주소:</th>
					<th>번호:</th>
					<th>분류:</th>
					<th>따봉:</th>
        		</tr>
        		<c:forEach var="wor" items="${STORE }">
        			<tr>
        				<td>${wor.store_no }</td>
        				<td><a href = "../manager/storeview.html?NO=${wor.store_no }">${wor.store_name }</a></td>
        				<td>${wor.store_ceo }</td>
        				<td>${wor.store_addr }</td>
						<td>${wor.store_tel }</td>
						<td>${wor.store_category }</td>
						<td>${wor.admin_star }</td>
        			</tr>
        		</c:forEach>
        	</table>
        </div>
      <!--    <form id="fileForm" method="post" enctype="multipart/form-data">
            <input type="file" name="file" multiple/>
         </form> -->
   </div>
</body>
</html>