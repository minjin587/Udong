<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/store_regist.css">
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="store_container">
		<div class="sidebar">           
           <a class="active"  href="../manager/managerstore.html">매장 정보</a> 
        </div>
        <div class="content"> 	
            <div class="row">
               <div class="col-25">
                  <label for="store_name">사업자 번호 : </label>
               </div>
               <div class="col-75">
                  <label>${STORE.store_no }</label>
               </div>
            </div>
            <div class="row">
               <div class="col-25">
                  <label for="store_name">가게 이름 : </label>
               </div>
               <div class="col-75">
                  <label>${STORE.store_name }</label>
               </div>
            </div>        	
            <div class="row">
               <div class="col-25">
                  <label for="store_name">사업자 이름 : </label>
               </div>
               <div class="col-75">
                  <label>${STORE.store_ceo }</label>
               </div>
            </div>
            <div class = "row">
               <div class="col-25">
                  <label for="store_name">가게 주소 : </label>
               </div>
               <div class="col-75">
                  <label>${STORE.store_addr }</label>
               </div>
            </div>
            <div class = "row">
			   <div class="col-25">
                  <label for="store_name">가게 번호 : </label>
               </div>
               <div class="col-75">
                  <label>${STORE.store_tel }</label>
               </div>
            </div>
            <div class = "row">
               <div class="col-25">
                  <label for="store_name">식품 : </label>
               </div>
               <div class="col-75">
                  <label>${STORE.store_category }</label>
               </div>
            </div>
            <div class = "row">
               <div class="col-25">
                  <label for="store_name">매장 상세내용 : </label>
               </div>
               <div class="col-75">
                  <label>${STORE.store_context }</label>
               </div>
            </div>            
           
            <form action="../manager/updatestore.html?storeNo=${STORE.store_no }" method="POST">
            <div class = "row">
               <div class="col-25">
                  <label for="store_star">추천 여부 : </label>
               </div>
               <div class="col-75">
					<input  type="radio" value="0" name="admin_star" checked/> 추천X
					<input  type="radio" value="1" name="admin_star"/> 추천O
               </div>
            </div>
            <input class = "btn" type = "submit" value = "변경"/>
            </form>
		</div>
</div>
</body>
</html>