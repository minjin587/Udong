<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/manager_user.css">
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->

<meta charset="EUC-KR">
<title>Store_Regist</title>
</head>
<body>
   <div class="manager_container">
		<div class="sidebar">
           <a class="active" href="../manager/managerdetail.html">일반 회원</a>
           <a href="../manager/managerstore.html">매장 정보</a> 
        </div>


        <div class="content">
        	<div class = "manager_search">
        		<form action="#" method="POST">
					<input type="email" name="email" placeholder="Write your Text!" />
					<input type="submit" value="Send" class="btn" />
				</form>
        	</div>
        	<table class = "test">
        		<tr>
        			<th>유저 번호:</th>
        			<th>유저 아이디:</th>
        			<th>유저 이름</th>
        			<th>성별:</th>

        		</tr>
        		<c:forEach var="row" items="${LIST }">
        			<tr>
        				<td>${row.user_no }</td>
        				<td><a href = "#">${row.user_id }</a></td>
        				<td>${row.name }</td>
        				<td>${row.gender }</td>

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