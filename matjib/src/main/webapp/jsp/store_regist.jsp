<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/store_regist.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <div class="store_container">
      <form action="/action_page.php">
         
         <div class="sidebar">
             <a class="active" href="#home">��ü ���</a>
             <a href="#">��ü ����</a> 
             <a href="#">��ü öȸ</a>
             <a href="#">��Ÿ �׸�</a>
         </div>
         
                     
         <div class="content">      
         <div class="row">
            <div class="col-25">
               <label for="store_name">���� �̸� : </label>
            </div>
            <div class="col-75">
               <input type="text" id="store_name" name="store_name"
                  placeholder="���� �̸��� �Է��� �ּ���.">
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
                  placeholder="��ȭ��ȣ�� �Է��ϼ��� .">
            </div>
         </div>


         <div class="row">
            <div class="col-25">
               <label for="store_addr">�ּ� : </label>
            </div>
            <div class="col-75">
               <select id="store_addr" name="store_addr">
                  <option value="select">---- �����ϼ��� ----</option>
                  <option value="jansil">���</option>
                  <option value="gangnam">����</option>
                  <option value="hongdae">ȫ��</option>
               </select>
            </div>
         </div>

         <div class="row">
            <div class="col-25">
               <label for="store_addr">�����з� ���� : </label>
            </div>
            <div class="col-75">
               <select id="store_addr" name="store_addr">
                  <option value="select">---- �����ϼ��� ----</option>
                  <option value="korean">�ѽ�</option>
                  <option value="china">�߽�</option>
                  <option value="japan">�Ͻ�</option>
               </select>
            </div>
         </div>

         <div class="row">
            <div class="col-25">
               <label for="subject">��ü �� ���� </label>
            </div>
            <div class="col-75">
               <textarea id="subject" name="subject"
                  placeholder="��ü�� �޴� , ���� , Ư¡ �� �� ������ ���ּ��� "
                  style="height: 200px"></textarea>
            </div>
         </div>

         <div class="row">
            <div class="col-25">
               <label for="store_image">���� �̹��� ��� : </label>
            </div>
            <div class="col-75">
               <input type="file" name="store_image" />
            </div>
         </div>



         <div class="store_bottom">
            <input type="submit" value="����ϱ� ">
         </div>
         
         </div>
      </form>
   </div>
</body>
</html>