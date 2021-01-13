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

		// �̹��� �������� �ʱ�ȭ
		sel_files = [];
		$(".imgs_wrap").empty();

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		var index = 0;
		filesArr
				.forEach(function(f) {
					if (!f.type.match("image.*")) {
						alert("Ȯ���ڴ� �̹��� Ȯ���ڸ� �����մϴ�.");
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

	
	/* <!-- �̸����� Ư�� �̹��� ����--> */
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
	/* <!-- �������� ����--> */
	function submitAction() {
		console.log("���ε� ���� ���� : " + sel_files.length);
		var data = new FormData();

		for (var i = 0, len = sel_files.length; i < len; i++) {
			var name = "image_" + i;
			data.append(name, sel_files[i]);
		}
		data.append("image_count", sel_files.length);

		if (sel_files.length < 1) {
			alert("�Ѱ��̻��� ������ �������ּ���.");
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
				<a class="#" href="../jsp/storedetail.html">��ü ���</a> 
				<a class="active" href="#home">��ü ����</a> 
				<a href="../jsp/store_secession.html">��ü öȸ</a> 
				<a href="#">��Ÿ �׸�</a>
			</div>


			<div class="content">
						
				<div class="row">
					<div class="col-25">
						<label for="store_name" >����� ��ȣ : </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_bn" name="store_bn" 
							value="${STORE.store_bn }"readonly/>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_name">���� �̸� : </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_name" name="store_name"
							value="${STORE.store_name }" readonly/>
							
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_ceo">��ǥ�� �̸� :</label>
					</div>
					<div class="col-75">
						<input type="text" id="store_ceo" name="store_ceo"
							value="${STORE.store_ceo }" placeholder="��ǥ�� �̸��� �����Ͻ÷��� ���ο� �̸��� �Է����ּ��� " />
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_tel">��ȭ ��ȣ : </label>
					</div>
					<div class="col-75">
						<input type="text" id="store_tel" name="store_tel"
							value="${STORE.store_tel }" placeholder="�����Ͻ� ��ȭ��ȣ��  �Է��ϼ��� .ex)010-1234-5678">
					</div>
				</div>


				<div class="row">
					<div class="col-25">
						<label for="store_addr">�ּ� : </label>
					</div>
					<div class="col-75">
						<select id="store_addr" name="store_addr">
							<option value="select">---- �����ϼ��� ----</option>
							<option value="sinchon">����</option>
							<option value="yongsan">���</option>
							<option value="jongro">����</option>
							<option value="ansan">�Ȼ�</option>
							<option value="anyang">�Ⱦ�</option>
							<option value="jamsil">���</option>
							<option value="gangnam">����</option>
							<option value="hongdae">ȫ��</option>
						</select>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_category">�����з� ���� : </label>
					</div>
					<div class="col-75">
						<select id="store_category" name="store_category">														
							<option value="select">---- �����ϼ��� ----</option>
							<option value="korean">�ѽ�</option>
							<option value="china">�߽�</option>
							<option value="japan">�Ͻ�</option>
							<option value="chicken">ġŲ</option>
							<option value="pizaa">����</option>
							<option value="snackbar">�н�</option>
							<option value="midnight">�߽�</option>
							<option value="desset">����Ʈ/ī��</option>
							<option value="otc">��Ÿ</option>							
						</select>
					</div>
				</div>

				<div class="row">
					<div class="col-25">
						<label for="store_context">��ü �� ���� </label>
					</div>
					<div class="col-75">
						<textarea id="store_context" name="store_context" 
							placeholder="��ü�� �޴� , ���� , Ư¡ �� �� ������ ���ּ��� "
							style="height: 200px">${STORE.store_context }</textarea>
					</div>
				</div>
				<!-- �̹��� ��� -->
				<div class="row">
					<div class="col-25">
						<label for="store_image">���� �̹��� ��� : </label>
					</div>

					<div class="col-75" id="image_container">
						<div class="input_wrap">
							<a href="javascript:" onclick="fileUploadAction();"
								class="btn">���� ���ε�</a><br/> 
								<strong>���̹����� �ּ� 1���̻� �������ּ���.</strong> 
								
								<input type="file" id="input_imgs" name="input_imgs"	multiple />
						</div>
				
						<div>
							<div class="imgs_wrap">
								<img id="img" />
							</div>							
						</div>

					</div>
				</div>
				<!-- �̸�����  -->

				<div class="store_bottom">
					<input type="submit" value="����ϱ� ">
				</div>
			</div>
		</form>

		<!-- 	<form id="fileForm" method="post" enctype="multipart/form-data">
				<input type="file" name="file" multiple/>
			</form> -->
	</div>
</body>
</html>