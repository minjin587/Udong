<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/store_regist.css">
<title>Insert title here</title>
</head>
<body>
	<div class="store_container">
		<form action="/action_page.php">
<!-- 업체등록이 완료된 경우에는 첫페이지가 관리페이지로 가야함 -->
			<div class="sidebar">
				<a href="#home">업체 등록</a>
				<a href="../jsp/store_Manage.html">업체 관리</a> 
				<a class="active" href="../jsp/store_secession.html">업체 철회</a> 
				<a href="#">기타 항목</a>
			</div>
			
			<div class="secession_content">
				<div class="row">
					<div class="col-25">
						<label for="store_name">샘플1 </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_name" name="store_name"
							placeholder="">
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="store_name">샘플2 </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_name" name="store_name"
							placeholder="">
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="store_name">샘플3 </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_name" name="store_name"
							placeholder="">
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>