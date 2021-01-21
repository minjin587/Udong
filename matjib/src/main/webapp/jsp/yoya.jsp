<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function test() {
	var s = document.querySelector("#test");
	s.classList.add("active");
}	
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/mypage_regist.css">
</head>
<body onload="test()">
   <div class="store_container">
      <form action="/action_page.php">                
         <div class="content">      
         <div class="row">
            <div class="col-25">
               <label for="store_name">예약 날짜 : </label>
            </div>
            <div class="col-75">
               <input type="text" id="store_name" name="store_name"
                  placeholder="2021/01/13.">
            </div>
         </div>

         <div class="row">
            <div class="col-25">
               <label for="store_ceo">매장 이름 :</label>
            </div>
            <div class="col-75">
               <input type="text" id="store_ceo" name="store_ceo"
                  placeholder="홍길동 치킨">
            </div>
         </div>

         <div class="row">
            <div class="col-25">
               <label for="store_tel">대표자 이름 : </label>
            </div>
            <div class="col-75">
               <input type="text" id="store_tel" name="store_tel"
                  placeholder="홍길동">
            </div>
         </div>


         <div class="row">
            <div class="col-25">
               <label for="store_addr">주소 : </label>
            </div>
            <div class="col-75">
               <select id="store_addr" name="store_addr">
                  <option value="select">---- 선택하세요 ----</option>
                  <option value="jansil">잠실</option>
                  <option value="gangnam">강남</option>
                  <option value="hongdae">홍대</option>
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
         </div>
      </form>
   </div>
</body>
</html>