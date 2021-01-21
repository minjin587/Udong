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
	<h3 class="content_title">
			<!-- form action="#" method="GET"></form> -->
			<input type="text" name="main_Search"
				placeholder="Insert your Search Text!" /> <input type="submit"
				value="Search" class="btn" />
		</h3>

		<p class="project_link">
			<a href="#">전체 맛집목록 보기는 여기를 클릭하세요!!</a>
		</p>
	<ul class="ranking_list">
           <li>  
                <a href="../ranking/raking_female.html">
                <img src="../img/Ranking_Lady.jpg" alt="image3"/>
                </a>
            </li>
            <li>
                <a href="../ranking/raking_male.html">
                <img src="../img/Ranking_Date.jpg" alt="image explane"/>
                </a>             
            </li>
            <li>
                <a href="../ranking/raking_uncle.html">
                <img src="../img/Ranking_Uncle.jpg" alt="image2"/>
                </a>                
            </li>
            <li>  
                <a href="../ranking/ranking_2030.html">
                <img src="../img/Ranking_2030.jpg" alt="image3"/>
                </a>               
            </li>  
             <li>  
                <a href="../ranking/review_star.html">
                <img src="../img/Ranking_solo.jpg" alt="image3"/>
                </a>               
            </li>  
              <li>  
                <a href="../ranking/review_ranking.html">
                <img src="../img/Ranking_Instar.jpg" alt="image3"/>
                </a>               
            </li>  
               
        </ul>
</body>
</html>