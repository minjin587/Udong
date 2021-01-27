<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<ul class="banner_list cycle-slideshow" 
            data-cycle-fx="scrollHorz" 
            data-cycle-timeout="2000"
            data-cycle-slides="> li"
            data-cycle-prev=".banner .prev"
            data-cycle-next=".banner .next"
            data-cycle-pager=".banner .pager"
            >
            <li class="slide1 slide">
                <!-- <h2 class="fancy-box color main_title">WrojectTitle</h2> --> 
                <!-- <div class="slide_contents"> -->                    
                    <a href="../main/event1.html" class="btn">바로가기</a>
                <!-- </div> -->
            </li>
            <li class="slide2 slide">
                <!-- <h2 class="fancy-box color main_title">ProjectTitle</h2> --> 
                <!-- <div class="slide_contents">    
                </div> -->                
                     <a href="../main/event1.html" class="btn">바로가기</a>
                
            </li>  
            <li class="slide3 slide">
                <!-- <h2 class="fancy-box color main_title">ProjectTitle</h2> --> 
                <!-- <div class="slide_contents">
                </div> -->                    
                     <a href="../main/event1.html" class="btn">바로가기</a>
                
            </li>              
        </ul>
        <!-- 슬라이드 이동버튼 -->
        <p class="controls">
            <a href="#" class="prev">
                <i class="fas fa-angle-left"></i>
            </a>
            <a href="#" class="next">
                <i class="fas fa-angle-right"></i>
            </a>
        </p>
        <!-- 슬라이드 갯수 자동생성 -->
        <p class="pager"></p>
</body>
</html>