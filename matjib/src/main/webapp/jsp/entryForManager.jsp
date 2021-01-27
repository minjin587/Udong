<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/entryForm.css">
<title>Insert title here</title>
</head>
<body>
   <script type="text/javascript">
   function nicknameCheck() {
      if (document.form.nickname.value == "") {
         alert("닉네임을 입력하세요.");
         form.nickname.focus();
         return false;
      }
      var url = "../idcheck/nicknamecheck.html?nickname="
            + document.form.nickname.value;
      window.open(url, "_blank", "width=450,height=200");
   }
   function idCheck() {
      if (document.form.user_id.value == "") {
         alert("ID를 입력하세요.");
         frm.user_id.focus();
         return false;
      }
      var url = "../idcheck/idcheck.html?ID="
            + document.form.user_id.value;
      window.open(url, "_blank", "width=450,height=200");
   }
      function validate(form) {
         if (form.name.value == "") {
            form.name.focus();
            alert("이름을 입력해주세요");
            return false;
         }
         if (form.id.value == "") {
            alert("아이디를 입력해주세요.");
            form.id.focus();
            return false;
         }
         if (form.password.value == "") {
            alert("비밀번호를 입력해주세요.");
            form.password.focus();
            return false;
         }
         if (form.password.value != form.passwordCheck.value) {
            alert("암호가 일치하지 않습니다.");
            form.password.focus();
            return false;
         }
         if (form.nickname.value == "") {
            alert("닉네임을 입력해주세요.");
            form.nickname.focus();
            return false;
         }
         if (form.email.value == "") {
            alert("이메일을 입력해주세요.");
            form.email.focus();
            return false;
         }
         if (form.phone1.value == "") {
            alert("전화번호를 입력해주세요.");
            form.phone1.focus();
            return false;
         }
         if (form.phone2.value == "") {
            alert("전화번호를 입력해주세요.");
            form.phone2.focus();
            return false;
         }
         if (form.phone3.value == "") {
            alert("전화번호를 입력해주세요.");
            form.phone3.focus();
            return false;
         }
         if (form.birth.value == "") {
            alert("생일을 선택해주세요.");
            form.birth.focus();
            return false;
         }
         if (form.image.value == "") {
            alert("프로필 이미지를 선택해주세요.");
            return false;
         }

      }
   </script>
   <div class="">
      <form action="../entry/managerlUser.html" class="form" id="fileupload" name="form"
         enctype="multipart/form-data" method="post"
         onSubmit="return validate(this)">


            <div class="sidebar">
             <a class="" href="../entry/normalUser.html">일반 회원 가입</a>
             <a class="active" href="#home">기업 회원 가입</a>             
         </div>
         
         <div class="content">         
         <div class="row">
            <div class="col-25">
            <label for="name">이름 :</label> 
            </div>
            <div class="col-75">
             <input type="text" name="name"   id="name" placeholder="이름을  입력하세요 ">
            </div>
         </div>
         
         
         <div class="row">
            <div class="col-25">
               <label for="id">아이디 : </label>
            </div>      
            <div class="col-75">
               <input type="text" id="id"
               name="user_id" placeholder="아이디를 입력해 주세요.">
               <input type="hidden" name="idChecked" id="idChecked" /> <input
                  type="button" value="중복검사" onClick="idCheck()" />
            </div>
            
         </div>
         
         <div class="row">
            <div class="col-25">
               <label for="password">비밀번호 : </label>
            </div>
            <div class="col-75">
            <input type="password" name="password" id="password" class="password" placeholder="비밀번호를 입력하세요 .">
            </div>
         </div>         
      
         <div class="row">
            <div class="col-25">
               <label for="passwordCheck" >비밀번호 확인 : </label>
            </div>
            <div class="col-75">
               <input type="password"
                  name="passwordCheck" id="passwordCheck" class="passwordCheck" placeholder="확인 비밀번호를 입력하세요.">
            </div>
         </div>
         
         
         <div class="row">
            <div class="col-25">
               <label for="nickname">닉네임 : </label></div>
            <div class="col-75">
               <input type="text" id="nickname" name="nickname" placeholder="사용할 닉네임을 입력해주세요 .">
                              <input type="hidden" name="nicknameChecked" id="nicknameChecked" /> <input
                  type="button" value="중복검사" onClick="nicknameCheck()" />
            </div>
         </div>
         
         
         <div class="row">
            <div class="col-25">
               <label for="email">이메일 : </label>
            </div>
            <div class="col-75">
               <input type="email" id="email" name="email" placeholder="이메일 주소를 입력하세요."> 
            </div>   
               
         </div>      
         
         <div class="row tel">
            <div class="col-25">
               <label for="phone">전화번호 : </label>
            </div>   
            <div class="col-25">
            <select path="phone1" name="phone1">
               <option value="02">02</option>
               <option value="02">031</option>
               <option value="02">010</option>
            </select>
            
            
            </div>         
            <div class="col-25">
            <input type="text" class="phone_back" name="phone2">
            </div>
            <div class="col-25">
            <input type="text" class="phone_back" name="phone3">
            </div>
         </div>
         
         <div class="row">
            <div class="col-25">
               <label for="gender">성별 : </label> 
            </div>   
            <div class="col-75">   
               <input type="radio" value="M" name="gender" checked id="gender"> 남자
               
               <input type="radio"   value="F" name="gender"> 여자 
            </div>
         </div>
         
         
         <div class="row">
            <div class="col-25">
               <label for="birth">생일 : </label>
            </div>   
            <div class="col-65">
                <input type="date" id="birth" name="birth">
            </div>
         </div>
         
         <div class="row">
            <div class="col-25">
               <label for="profile">프로필 : </label>
            </div>
            <div class="col-75">
             <img id="output_image" />
                <input type="file" accept="image/*"
               onchange="preview_image(event)" name="image">
            </div>
         </div>
         
         <div class="store_bottom">
            <input type="hidden" name="grade" value="M">
            <input type="submit" value="가입하기">
         </div>
         </div>
      </form>

   </div>
 
</body>
</html>