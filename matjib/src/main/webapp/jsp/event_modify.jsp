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
</script>
</head>
<body>
   <div class="store_container">
      <form action="../event/update.html" method="post"
         enctype="multipart/form-data" id="fileupload" name="form">
<!-- 업체등록이 완료된 경우에는 첫페이지가 관리페이지로 가야함 -->
         <div class="sidebar">
            <a class="#" href="../main/event1.html">이벤트 등록</a>
            <a class="active" href="#home">이벤트 관리</a>                        
         </div>


         <div class="content">
			<input type="hidden" id="event_no" name="event_no" value="${event_NO }">
            <div class="row">
               <div class="col-25">
                  <label for="event_title">이벤트 이름  </label>
               </div>
               <div class="col-75">
                  <input type="text" id="event_title" name="event_title"
                    >
               </div>
            </div>

            <div class="row">
               <div class="col-25">
                  <label for="event_context">이벤트 상세설명 </label>
               </div>
               <div class="col-75">
                  <textarea id="event_context" name="event_context"
                     placeholder="이벤트의 내용을 자세하게 설명하세요."
                     style="height: 200px"></textarea>
               </div>
            </div>
            <!-- 대표이미지 등록 -->            
            <div class="row">            
               <div class="col-25">
                  <label for="thumbnail">대표 이미지 등록 </label>
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