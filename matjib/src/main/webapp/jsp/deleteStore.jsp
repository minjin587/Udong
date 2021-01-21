<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function deleteCheck(){
var answer = confirm("매장을 철회할까요?");


if (answer===true) {

        alert("철회 되었습니다.");
        window.location.href="../store/store_delete.html";

} else {

        alert("철회 취소되었습니다.");
        window.location.href="../jsp/storedetail.html";
}
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="deleteCheck()">

</body>
</html>