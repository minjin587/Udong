<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/store_regist.css">
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->

<meta charset="EUC-KR">
<title>Store_Management</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"
	charset="utf-8"></script>
<script type="text/javascript">

	/* var cate = document.getElementById("store_category");
	var store_category = cate.option[cate.selectedindex].value;
	
	function getCategory(){
		$("#store_category:selected").val();
	} */
	
	
	
	var sel_files = [];

	$(document).ready(function() {
		$("#input_imgs").on("change", handleImgFileSelect);
	});

	function fileUploadAction() {
		console.log("fileUploadAction");
		$("#input_imgs").trigger('click');
	}

	function handleImgFileSelect(e) {

		// 이미지 정보들을 초기화
		sel_files = [];
		$(".imgs_wrap").empty();

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		var index = 0;
		filesArr
				.forEach(function(f) {
					if (!f.type.match("image.*")) {
						alert("확장자는 이미지 확장자만 가능합니다.");
						return;
					}

					sel_files.push(f);

					var reader = new FileReader();
					reader.onload = function(e) {
						var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("
								+ index
								+ ")\" id=\"img_id_"
								+ index
								+ "\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
						$(".imgs_wrap").append(html);
						index++;

					}
					reader.readAsDataURL(f);

				});
	}

	
	/* <!-- 미리보기 특정 이미지 삭제--> */
	function deleteImageAction(index) {
		console.log("index : " + index);
		console.log("sel length : " + sel_files.length);

		sel_files.splice(index, 1);

		var img_id = "#img_id_" + index;
		$(img_id).remove();
	}

	function fileUploadAction() {
		console.log("fileUploadAction");
		$("#input_imgs").trigger('click');
	}
	/* <!-- 다중파일 전송--> */
	function submitAction() {
		console.log("업로드 파일 갯수 : " + sel_files.length);
		var data = new FormData();

		for (var i = 0, len = sel_files.length; i < len; i++) {
			var name = "image_" + i;
			data.append(name, sel_files[i]);
		}
		data.append("image_count", sel_files.length);

		if (sel_files.length < 1) {
			alert("한개이상의 파일을 선택해주세요.");
			return;
		}

		var xhr = new XMLHttpRequest();
		xhr.open("POST", "./study01_af.php");
		xhr.onload = function(e) {
			if (this.status == 200) {
				console.log("Result : " + e.currentTarget.responseText);
			}
		}

		xhr.send(data);

	}
</script>
</head>
<body>
<div class="store_container">
		<form action="../store/store_update.html" method="post"
			enctype="multipart/form-data"
>
			<div class="sidebar">
				<a class="#" href="../jsp/storedetail.html">업체 등록</a> 
				<a class="active" href="#home">업체 관리</a> 
				<a href="../jsp/store_secession.html">업체 철회</a> 
				<a href="#">기타 항목</a>
			</div>


			<div class="content">
						
				<div class="row">
					<div class="col-25">
						<label for="store_name" >사업자 번호 : </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_bn" name="store_bn" 
							value="${STORE.store_bn }"readonly/>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_name">가게 이름 : </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_name" name="store_name"
							value="${STORE.store_name }" readonly/>
							
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_ceo">대표자 이름 :</label>
					</div>
					<div class="col-75">
						<input type="text" id="store_ceo" name="store_ceo"
							value="${STORE.store_ceo }" placeholder="대표자 이름을 변경하시려면 새로운 이름을 입력해주세요 " />
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_tel">전화 번호 : </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_tel" name="store_tel"
							value="${STORE.store_tel }" placeholder="변경하실 전화번호를  입력하세요 .ex)010-1234-5678">
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
							<option value="jamsil">잠실</option>
							<option value="gangnam">강남</option>
							<option value="hongdae">홍대</option>
						</select>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_category">업종분류 선택 : </label>
					</div>
					<div class="col-75">
						<select id="store_category" name="store_category">														
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
						<label for="store_context">업체 상세 설명 </label>
					</div>
					<div class="col-75">
						<textarea id="store_context" name="store_context" 
							placeholder="업체의 메뉴 , 가격 , 특징 등 상세 설명을 해주세요 "
							style="height: 200px">${STORE.store_context }</textarea>
					</div>
				</div>
				<!-- 이미지 등록 -->
				<div class="row">
					<div class="col-25">
						<label for="store_image">가게 이미지 등록 : </label>
					</div>

					<div class="col-75" id="image_container">
						<div class="input_wrap">
							<a href="javascript:" onclick="fileUploadAction();"
								class="btn">파일 업로드</a><br/> 
								<strong>※이미지는 최소 1개이상 선택해주세요.</strong> 
								
								<input type="file" id="input_imgs" name="input_imgs"	multiple />
						</div>
				
						<div>
							<div class="imgs_wrap">
								<img id="img" />
							</div>							
						</div>

					</div>
				</div>
				<!-- 미리보기  -->

				<div class="store_bottom">
					<input type="submit" value="등록하기 ">
				</div>
			</div>
		</form>

		<!-- 	<form id="fileForm" method="post" enctype="multipart/form-data">
				<input type="file" name="file" multiple/>
			</form> -->
	</div>
</body>
</html>