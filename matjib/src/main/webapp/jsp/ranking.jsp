<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class = "main-body">
	<div class = "main-content">
		<div class = "main-tatile">
			<h3 class="content_title">
				<!-- form action="#" method="GET"></form> -->
				<input type="text" name="main_Search"
					placeholder="Insert your Search Text!" /> <input type="submit"
					value="Search" class="btn" />
			</h3>

			<p class="project_link">
				<a href="#">��ü ������� ����� ���⸦ Ŭ���ϼ���!!</a> 
			</p>
		</div>
		<div class = "content-content">
			<section id = "content-list">
				<ul class = "toplist-top">
					<li class = "toplist-list">
						<div class = "list-content">
							<figure class = "image-item">
								<div class = "image-list"> 
									<a href="../jsp/kakunin.html"><img class = "imagelist-item" alt="" src="../img/slide1.png"/></a>						</div>
								<figcaption>
									<div class = "info">
										<spen class = "title">����</spen>
									</div>
								</figcaption>
								<div class = "image-info">
									<p>�׽�Ʈ222
								</div>
							</figure>
						</div>
					</li>
					<li class = "toplist-list">
						<div class = "list-content">
							<figure class = "image-item">
								<div class = "image-list"> 
									<img class = "imagelist-item" alt="" src="../img/slide1.png">
								</div>
								<figcaption>
									<div class = "info">
										<spen class = "title">����</spen>
									</div>
								</figcaption>
								<div class = "image-info">
									<p>�׽�Ʈ333333333333333333333333333333333
								</div>
							</figure>
						</div>
					</li>
				</ul>
			</section>
		</div>

<!-- 	<ul class="project_list"> -->
<!--            <li>   -->
<!--                 <a href="../main/ranking.html"><img src="../img/Ranking_main.jpg" alt="image3"/> -->
<!--                 </a>                 -->
<!--                 <div class="hover_content">   
<!--                    <h4>Hover Test!</h4> -->
<!--                    <a href="#">Click HERE!!</a>              -->
<!--                 </div> -->
<!--             </li> -->
<!--             <li> -->
<!--                 <a href="#"><img src="../img/Local_main.jpg" alt="image explane"/> -->
<!--                 </a>              -->
<!--             </li> -->
<!--             <li> -->
<!--                 <a href="#"><img src="../img/Category_main.jpg" alt="image2"/> -->
<!--                 </a>                 -->
<!--             </li> -->
<!--             <li>   -->
<!--                 <a href="#"><img src="../img/Recommand_main.jpg" alt="image3"/> -->
<!--                 </a>                -->
<!--             </li>   -->
<!--              <li>   -->
<!--                 <a href="#"><img src="../img/Recommand_main.jpg" alt="image3"/> -->
<!--                 </a>                -->
<!--             </li>   -->
<!--              <li>   -->
<!--                 <a href="#"><img src="../img/Recommand_main.jpg" alt="image3"/> -->
<!--                 </a>                -->
<!--             </li>     -->
<!--         </ul> -->




	
		<div class = "main-ranking">
			<a href="">������ȣ</a>
			<a href="">������</a>
			<a href="">�з��� </a>
			<a href="">������ ��õ</a>
		</div>
	</div>
</div>	
</body>
</html>