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
   /* ��ǥ���� */   
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

      // �̹��� �������� �ʱ�ȭ
      sel_files = [];
      $(".imgs_wrap2").empty();

      var files = e.target.files;
      var filesArr = Array.prototype.slice.call(files);

      var index = 0;
      filesArr
            .forEach(function(f) {
            /*    if (!f.type.match("image.*")) {
                  alert("Ȯ���ڴ� �̹��� Ȯ���ڸ� �����մϴ�.");
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
   
   /* <!-- �̸����� Ư�� �̹��� ����--> */
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
<!-- ��ü����� �Ϸ�� ��쿡�� ù�������� ������������ ������ -->
         <div class="sidebar">
            <a class="#" href="../main/event1.html">�̺�Ʈ ���</a>
            <a class="active" href="#home">�̺�Ʈ ����</a>                        
         </div>


         <div class="content">
			<input type="hidden" id="event_no" name="event_no" value="${event_NO }">
            <div class="row">
               <div class="col-25">
                  <label for="event_title">�̺�Ʈ �̸�  </label>
               </div>
               <div class="col-75">
                  <input type="text" id="event_title" name="event_title"
                    >
               </div>
            </div>

            <div class="row">
               <div class="col-25">
                  <label for="event_context">�̺�Ʈ �󼼼��� </label>
               </div>
               <div class="col-75">
                  <textarea id="event_context" name="event_context"
                     placeholder="�̺�Ʈ�� ������ �ڼ��ϰ� �����ϼ���."
                     style="height: 200px"></textarea>
               </div>
            </div>
            <!-- ��ǥ�̹��� ��� -->            
            <div class="row">            
               <div class="col-25">
                  <label for="thumbnail">��ǥ �̹��� ��� </label>
               </div>

               <div class="col-75" id="image_container">                           
                  <div class="input_wrap">
                     <a href="javascript:" onclick="fileUploadAction2();"
                        class="btn">���� ���ε�</a><br/> 
                        <strong>�ش�ǥ �̹����� 1���� ����� �����մϴ�.</strong>                        
                        <input type="file" id="thumbnail" name="thumbnail" style="display:none"/>                        
                  </div>
                  <!-- �̸�����  -->
                  <div>
                     <div class="imgs_wrap2">                     
                        <img id="img" />
                     </div>                     
                  </div>

               </div>
            </div>
            
            <div class="store_bottom">
               <input type="submit" value="����ϱ� ">
            </div>
         </div>
      </form>

      <!--    <form id="fileForm" method="post" enctype="multipart/form-data">
            <input type="file" name="file" multiple/>
         </form> -->
   </div>
</body>
</html>