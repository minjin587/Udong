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
      $("#image").trigger('click');
   }
   
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
   function validate(form) {
	   if (form.store_bn.value == "") {
	      form.store_bn.focus();
	      alert("����ڸ��� �Է����ּ���");
	      return false;
	   }
	   if (form.store_name.value == "") {
	      alert("�����̸��� �Է����ּ���.");
	      form.store_name.focus();
	      return false;
	   }
	   if (form.store_ceo.value == "") {
	      alert("��ǥ���̸��� �Է����ּ���.");
	      form.store_ceo.focus();
	      return false;
	   }

	   if (form.store_tel.value == "") {
	      alert("��ȭ��ȣ�� �Է����ּ���.");
	      form.store_tel.focus();
	      return false;
	   }
	   if (form.store_addr.value == "select") {
	      alert("�ּҸ� �Է����ּ���.");
	      form.store_addr.focus();
	      return false;
	   }
	   if (form.store_category.value == "select") {
	      alert("��ü�з��� �Է����ּ���.");
	      form.store_category.focus();
	      return false;
	   }
	   if (form.store_context.value == "") {
	      alert("��ü�󼼼����� �Է����ּ���.");
	      form.store_context.focus();
	      return false;
	   }
	   if (form.thumbnail.value == "") {
	      alert("��ǥ�̹����� �־��ּ���.");
	      return false;
	   }
	   if (form.image.value == "") {
	      alert("�����̹����� �־��ּ���.");
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
<!-- ��ü����� �Ϸ�� ��쿡�� ù�������� ������������ ������ -->
         <div class="sidebar">
            <a class="active" href="#home">��ü ���</a>
            <a href="../jsp/store_Manage.html">��ü ����</a> 
            <a href="../jsp/store_secession.html">��ü öȸ</a>            
         </div>


         <div class="content">

            <div class="row">
               <div class="col-25">
                  <label for="store_name">����� ��ȣ : </label>
               </div>
               <div class="col-75">
                  <input type="text" id="store_bn" name="store_bn"
                     placeholder="����� ��ȣ�� �Է����ּ��� . ex)1111-���Ｍ��-111111">
               </div>
            </div>

            <div class="row">
               <div class="col-25">
                  <label for="store_name">���� �̸� : </label>
               </div>
               <div class="col-75">
                  <input type="text" id="store_name" name="store_name"
                     placeholder="���� �̸�(��ȣ��)�� �Է��� �ּ���.ex) �츮���׸���">
               </div>
            </div>

            <div class="row">
               <div class="col-25">
                  <label for="store_ceo">��ǥ�� �̸� :</label>
               </div>
               <div class="col-75">
                  <input type="text" id="store_ceo" name="store_ceo"
                     placeholder="��ǥ�� �̸��� �Է��ϼ��� ex)ȫ�浿">
               </div>
            </div>

            <div class="row">
               <div class="col-25">
                  <label for="store_tel">��ȭ ��ȣ : </label>
               </div>
               <div class="col-75">
                  <input type="text" id="store_tel" name="store_tel"
                     placeholder="��ȭ��ȣ�� �Է��ϼ��� .ex)010-1234-5678">
               </div>
            </div>


            <div class="row">
               <div class="col-25">
                  <label for="store_addr">�ּ� : </label>
               </div>
               <div class="col-75">
                  <select id="store_addr" name="store_addr">
                     <option value="select">---- �����ϼ��� ----</option>
                     <option value="����">����</option>
                     <option value="���">���</option>
                     <option value="����">����</option>
                     <option value="�Ȼ�">�Ȼ�</option>
                     <option value="�Ⱦ�">�Ⱦ�</option>
                     <option value="���">���</option>
                     <option value="����">����</option>
                     <option value="ȫ��">ȫ��</option>
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
                     <option value="�ѽ�">�ѽ�</option>
                     <option value="�߽�">�߽�</option>
                     <option value="�Ͻ�">�Ͻ�</option>
                     <option value="ġŲ����">ġŲ/����</option>                     
                     <option value="�нľ߽�">�н�/�߽�</option>                     
                     <option value="ī��">����Ʈ/ī��</option>                     
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
                     style="height: 200px"></textarea>
               </div>
            </div>
            <!-- ��ǥ�̹��� ��� -->            
            <div class="row">            
               <div class="col-25">
                  <label for="store_thumbnail">��ǥ �̹��� ��� </label>
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
                        <input type="file" id="image" name="image" multiple  style="display:none"/>                        
                  </div>
                  <!-- �̸�����  -->
                  <div>
                     <div class="imgs_wrap">
                        <img id="img" />
                     </div>                     
                  </div>

               </div>
            </div>
            <input type ="hidden" value = "0" name = "admin_star">

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