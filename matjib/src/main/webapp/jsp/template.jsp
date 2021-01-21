<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/style.css">
<title>UdongProject</title>
<meta name="description" content="An HTML protfolio Theme built" />
<meta name="keywords" content="portfolio, theme, bootstrap, grid" />
<meta name="author" content="Alikerock" />
<meta name="viewport" content="width=device-width" , initial-scale=1 "/>
<script src="https://kit.fontawesome.com/90c06db892.js"
   crossorigin="anonymous"></script>
<!-- Cycle2 -->
<!-- include jQuery -->
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<!-- Cycle2 -->

</head>
<script>
function fuck(){
	alert("�� ������ Ȯ���ҷ��� �α����� ���� �ؾ��մϴ�.");
	return false;
}
</script>
<body>
   <!-- header -->
   <header>
      <div class="container clearfix" style="position: realative;">
         <h1 class="logo">
            <!-- <img src="Udong_logo.jpg" alt="udong_project"/> -->
            <a href="../main/template.html">Logotest</a>
         </h1>
          <nav>
            <ul class="clearfix">
               <c:if test="${loginUser == null }">
               <li><a href="../login/login.html" class="login">�α���</a></li>
               </c:if>
               <c:if test="${loginUser != null }">
               <li><a href="../logout/template.html" class="login">�α׾ƿ�</a></li>
               </c:if>
               <c:if test="${loginUser == null }">
               <li><a href="../jsp/userentry.html">ȸ������</a></li>
               </c:if>
               <li><a href="../jsp/qnacenter.html">������</a></li>
               <c:if test="${loginUser == null }">
                 <li><a href="../login/login.html" onClick="fuck()" ><i class="fas fa-user"></i></a></li>
               </c:if >
               <c:if test="${loginUser != null }">
               <li><a href="../jsp/mypage.html" target="_self"><i class="fas fa-user"></i></a></li>
               </c:if>
               <c:if test="${grade =='M' }">               
               <li><a href="../jsp/storedetail.html"><i class="fas fa-clipboard-list"></i></a></li>
               </c:if>
               <c:if test="${grade =='V' }">
               <li><a href="../manager/managerdetail.html"><i class="fas fa-cat"></i></a></li>
               </c:if>
            </ul>
         </nav>
         
      </div>
   </header>
   <!-- header -->

   <!-- ��� �����̵� -->
	<div style="position: realative;" class="banner">
		<c:choose>
			<c:when test="${BANNER != null }">
				<jsp:include page="${BANNER }"></jsp:include>
			</c:when>
			<c:otherwise>
				<jsp:include page="main_banner.jsp"></jsp:include>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- banner -->

	<!-- main_content -->
	<div class="main_content scontainer" style="position: realative;">
				<!-- <div class="project_list"> -->
			<c:choose>
				<c:when test="${BODY != null }">
					<jsp:include page="${BODY }"></jsp:include>
				</c:when>
				<c:otherwise>
					<jsp:include page="main.jsp"></jsp:include>
				</c:otherwise>
			</c:choose>
		<!-- </div> -->
	</div>
	<!-- main_content -->
	
	<!-- footer -->
	<footer>
		<span class="icon fancy-box orange"> <i
			class="fas fa-people-carry "></i>
		</span>
		<div class="footer_main">
			<p>���ǰ� �ʿ��Ͻ� �κ��� �����ڿ��� �̸����� �������ּ��� ! �ʿ��� ���� �ۼ�.</p>
			<!-- �����ϱ�  -->
			<form action="#" method="POST">
				<input type="email" name="email" placeholder="Write your Text!" />
				<!-- <button type="submit" class="btn">Send E-mail</button> -->
				<!-- <input tpy=e"image" crc="send.png" alt="" class="btn" -->
				<input type="submit" value="Send" class="btn" />
			</form>

			<p class="share">
				<a href="https://www.facebook.com/"> <i class="fab fa-facebook"></i>
				</a><a href="https://twitter.com/?lang=ko"> <i class="fab fa-twitter"></i></a>
			</p>
			<h1 class="logo">
				<!-- <img src="Udong_logo.jpg" alt="udong_project"/> -->
				<a href="#">Logotest</a>
			</h1>
			<p class="copy" align="left">
				�� �츮���׸���<br> ����Ư���� ���ʱ� �������00�� 00, 0��<br> ��ǥ�̻�: ȫ�浿<br>
				����� ��Ϲ�ȣ: 123-45-678910 [���������Ȯ��]<br> ����Ǹž� �Ű��ȣ:
				1111-�������-00000<br> ������: 02-123-4567<br> &copy; 2020
				UridoneMatjip Co., Ltd. All rights reserved.

			</p>
		</div>
	</footer>
	<!-- footer -->


	<!-- <nav class="navbar">
        <div class="navbar_logo">


        </div>


        <div class="navbar_menu">


        </div>


        <div class="navbar_links">


        </div>
    </nav> -->

</body>
</html>