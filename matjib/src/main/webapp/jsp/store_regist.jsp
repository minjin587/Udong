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
<title>Store_Regist</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"
   charset="utf-8"></script>
<script type="text/javascript">
   
   var sel_files = [];

   $(document).ready(function() {
      $("#image").on("change", handleImgFileSelect);
   });

   function fileUploadAction() {
      console.log("fileUploadAction");
      $("#image").trigger('click');
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
      $("#image").trigger('click');
   }
   
   /* 대표사진 */   
   var sel_files = [];

   $(document).ready(function() {
      $("#thumbnail").on("change", handleImgFileSelect1);
   });
   alter("test1")
   function fileUploadAction2() {
      console.log("fileUploadAction2");
      $("#thumbnail").trigger('click');
   }

   function handleImgFileSelect1(e) {

      // 이미지 정보들을 초기화
      sel_files = [];
      $(".imgs_wrap2").empty();

      var files = e.target.files;
      var filesArr = Array.prototype.slice.call(files);

      var index = 0;
      filesArr
            .forEach(function(f) {
            /*    if (!f.type.match("image.*")) {
                  alert("확장자는 이미지 확장자만 가능합니다.");
                  return;
               } */

               sel_files.push(f);

               var reader = new FileReader();
               reader.onload = function(e) {
                  var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction2("
                        + index
                        + ")\" id=\"test"
                        + index
                        + "\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
                  $(".imgs_wrap2").append(html);
                  index++;

               }
               reader.readAsDataURL(f);

            });
   }
   
   /* <!-- 미리보기 특정 이미지 삭제--> */
   function deleteImageAction2(index) {
      console.log("index : " + index);
      console.log("sel length : " + sel_files.length);

      sel_files.splice(index, 1);

      var img_id = "#test" + index;
      $(img_id).remove();
   }

   function fileUploadAction2() {
      console.log("fileUploadAction2");
      $("#thumbnail").trigger('click');
   }
   function validate(form) {
	   if (form.store_bn.value == "") {
	      form.store_bn.focus();
	      alert("사업자명을 입력해주세요");
	      return false;
	   }
	   if (form.store_name.value == "") {
	      alert("가게이름을 입력해주세요.");
	      form.store_name.focus();
	      return false;
	   }
	   if (form.store_ceo.value == "") {
	      alert("대표자이름을 입력해주세요.");
	      form.store_ceo.focus();
	      return false;
	   }

	   if (form.store_tel.value == "") {
	      alert("전화번호를 입력해주세요.");
	      form.store_tel.focus();
	      return false;
	   }
	   if (form.store_addr.value == "select") {
	      alert("주소를 입력해주세요.");
	      form.store_addr.focus();
	      return false;
	   }
	   if (form.store_category.value == "select") {
	      alert("업체분류를 입력해주세요.");
	      form.store_category.focus();
	      return false;
	   }
	   if (form.store_context.value == "") {
	      alert("업체상세설명을 입력해주세요.");
	      form.store_context.focus();
	      return false;
	   }
	   if (form.thumbnail.value == "") {
	      alert("대표이미지를 넣어주세요.");
	      return false;
	   }
	   if (form.image.value == "") {
	      alert("가게이미지를 넣어주세요.");
	      return false;
	   }
	   }

</script>
</head>
<body>
   <div class="store_container">
      <form action="../store/addStore.html" method="post"
         enctype="multipart/form-data" id="fileupload" name="form"
         onSubmit="return validate(this)">
<!-- 업체등록이 완료된 경우에는 첫페이지가 관리페이지로 가야함 -->
         <div class="sidebar">
            <a class="active" href="#home">업체 등록</a>
            <a href="../jsp/store_Manage.html">업체 관리</a> 
            <a href="../jsp/store_secession.html">업체 철회</a>            
         </div>


         <div class="content">

            <div class="row">
               <div class="col-25">
                  <label for="store_name">사업자 번호 : </label>
               </div>
               <div class="col-75">
                  <input type="text" id="store_bn" name="store_bn"
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
                     <option value="신촌">신촌</option>
                     <option value="용산">용산</option>
                     <option value="종로">종로</option>
                     <option value="안산">안산</option>
                     <option value="안양">안양</option>
                     <option value="잠실">잠실</option>
                     <option value="강남">강남</option>
                     <option value="홍대">홍대</option>
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
                     <option value="한식">한식</option>
                     <option value="중식">중식</option>
                     <option value="일식">일식</option>
                     <option value="치킨피자">치킨/피자</option>                     
                     <option value="분식야식">분식/야식</option>                     
                     <option value="카페">디저트/카페</option>                     
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
                     style="height: 200px"></textarea>
               </div>
            </div>
            <!-- 대표이미지 등록 -->            
            <div class="row">            
               <div class="col-25">
                  <label for="store_thumbnail">대표 이미지 등록 </label>
               </div>

               <div class="col-75" id="image_container">                           
                  <div class="input_wrap">
                     <a href="javascript:" onclick="fileUploadAction2();"
                        class="btn">파일 업로드</a><br/> 
                        <strong>※대표 이미지는 1개만 등록이 가능합니다.</strong>                        
                        <input type="file" id="thumbnail" name="thumbnail" style="display:none"/>                        
                  </div>
                  <!-- 미리보기  -->
                  <div>
                     <div class="imgs_wrap2">                     
                        <img id="img" />
                     </div>                     
                  </div>

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
                        <input type="file" id="image" name="image" multiple  style="display:none"/>                        
                  </div>
                  <!-- 미리보기  -->
                  <div>
                     <div class="imgs_wrap">
                        <img id="img" />
                     </div>                     
                  </div>

               </div>
            </div>
            <input type ="hidden" value = "0" name = "admin_star">

            <div class="store_bottom">
               <input type="submit" value="등록하기 ">
            </div>
         </div>
         
      </form>

      <!--    <form id="fileForm" method="post" enctype="multipart/form-data">
            <input type="file" name="file" multiple/>
         </form> -->
   </div>
</body>
</html>