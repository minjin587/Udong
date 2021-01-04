<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script> function setImage(event) {
	for (var image of event.target.files) { 
		var reader = new FileReader(); reader.onload = 
			function(event) {
			var img = document.createElement("img"); img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img); }; 
			console.log(image); reader.readAsDataURL(image); } } 
</script>			


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/store_regist.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="store_container">
		<form action="/action_page.php" >
			
			<div class="sidebar">
				 <a class="active" href="#home">업체 등록</a>
				 <a href="#">업체 관리</a> 
				 <a href="#">업체 철회</a>
				 <a href="#">기타 항목</a>
			</div>
			
							
			<div class="content">
			
				<div class="row">
				<div class="col-25">
					<label for="store_name">사업자 번호 : </label>
				</div>
				<div class="col-75">
					<input type="text" id="store_name" name="store_name"
						placeholder="사업자 번호를 입력해주세요 . ex)1111-서울서초-111111">
				</div>
			</div>
					
			<div class="row">
				<div class="col-25">
					<label for="store_name">가게 이름 : </label>
				</div>
				<div class="col-75">
					<input type="text" id="store_name" name="store_name"
						placeholder="가게 이름(상호명)을 입력해 주세요.ex) 우리동네맛집">
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="store_ceo">대표자 이름 :</label>
				</div>
				<div class="col-75">
					<input type="text" id="store_ceo" name="store_ceo"
						placeholder="대표자 이름을 입력하세요 ex)홍길동">
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="store_tel">전화 번호 : </label>
				</div>
				<div class="col-75">
					<input type="text" id="store_tel" name="store_tel"
						placeholder="전화번호를 입력하세요 .ex)010-1234-5678">
				</div>
			</div>


			<div class="row">
				<div class="col-25">
					<label for="store_addr">주소 : </label>
				</div>
				<div class="col-75">
					<select id="store_addr" name="store_addr">
						<option value="select">---- 선택하세요 ----</option>
						<option value="sinchon">신촌</option>
						<option value="yongsan">용산</option>
						<option value="jongro">종로</option>
						<option value="ansan">안산</option>
						<option value="anyang">안양</option>
						<option value="jansil">잠실</option>
						<option value="gangnam">강남</option>
						<option value="hongdae">홍대</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="store_addr">업종분류 선택 : </label>
				</div>
				<div class="col-75">
					<select id="store_addr" name="store_addr">
						<option value="select">---- 선택하세요 ----</option>
						<option value="korean">한식</option>
						<option value="china">중식</option>
						<option value="japan">일식</option>
						<option value="chicken">치킨</option>
						<option value="pizaa">피자</option>
						<option value="snackbar">분식</option>
						<option value="midnight">야식</option>
						<option value="desset">디저트/카페</option>
						<option value="otc">기타</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="subject">업체 상세 설명 </label>
				</div>
				<div class="col-75">
					<textarea id="subject" name="subject"
						placeholder="업체의 메뉴 , 가격 , 특징 등 상세 설명을 해주세요 "
						style="height: 200px"></textarea>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="store_image">가게 이미지 등록 : </label>
				</div>
				<input multiple="multiple" type="file" id="image" name="file" accept="image/*" 
				onchange="setImage(event)"/>
				<!-- <input type="button" value="다시입력" /> -->
				<div class="col-75" id="image_container"></div>								
			</div>	
			
				<div class="store_bottom">
					<input type="submit" value="등록하기 ">
				</div>
			
			</div>
		</form>
	</div>
</body>
</html>