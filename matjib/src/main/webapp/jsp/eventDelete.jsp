<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function deleteCheck(){
var answer = confirm("이벤트를 삭제하시겠습니까 ?");


if (answer===true) {

        alert("이벤트가 정상적으로 삭제되었습니다.");        
        window.location.href="../event/delete.html";

} else {

        alert("이벤트 삭제가 취소되었습니다.");
        window.location.href="../event/manage.html";
}
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="deleteCheck()">

</body>
</html>