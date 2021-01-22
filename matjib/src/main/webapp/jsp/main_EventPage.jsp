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
<title>event_detail</title>
<script>
function deleteCheck(){
	var answer = confirm("이벤트를 삭제하시겠습니까 ?");


	if (answer===true) {
			
	        alert("이벤트가 정상적으로 삭제되었습니다.");     
	        const ev_no = document.getElementById("ev_number").value;
	        alert("ev_no"+ev_no);
	        window.location.href="../event/delete.html?event_no="+ev_no;
	
	} else {

	        alert("이벤트 삭제가 취소되었습니다.");
	        window.location.href="../event/manage.html";
	        return false;
	}
	}
	</script>
</head>
<body>
  <c:forEach var="EVList" items="${eventList }"> 
<div class="detail_inner">
<div class="row">
  <div class="side">
  <ul>    
    <li>
   	 <a href="#"><img src="${pageContext.request.contextPath }/image/${EVList.event_photo }" alt="이벤트이미지"></a>
    </li>
   </ul>    
  </div> 

 <div class="main">

    <div>   
    <h3>${EVList.event_no}. ${EVList.event_title }</h3>
    <h5>${EVList.event_context }</h5>    
    
    <input type="hidden" id="ev_number" value="${EVList.event_no }">    
    </div>
    
          
  </div>  
</div>

</div>
 </c:forEach>
</body>
</html>