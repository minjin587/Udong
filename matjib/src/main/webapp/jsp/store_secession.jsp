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
<!-- ��ü����� �Ϸ�� ��쿡�� ù�������� ������������ ������ -->
			<div class="sidebar">
				<a href="#home">��ü ���</a>
				<a href="../jsp/store_Manage.html">��ü ����</a> 
				<a class="active" href="../jsp/store_secession.html">��ü öȸ</a> 
				<a href="#">��Ÿ �׸�</a>
			</div>
			
			<div class="secession_content">
				<div class="row">
					<div class="col-25">
						<label for="store_name">����1 </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_name" name="store_name"
							placeholder="">
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="store_name">����2 </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_name" name="store_name"
							placeholder="">
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="store_name">����3 </label>
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