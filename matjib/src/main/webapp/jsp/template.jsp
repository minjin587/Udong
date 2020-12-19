<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <title>UdongProject</title>
    <meta name="description" content="An HTML protfolio Theme built"/>
    <meta name="keywords" content="portfolio, theme, bootstrap, grid"/>
    <meta name="author" content="Alikerock"/>
    <meta name="viewport" content="width=device-width", initial-scale=1"/>
    <script src="https://kit.fontawesome.com/90c06db892.js" crossorigin="anonymous"></script>
    <!-- Cycle2 -->
    <!-- include jQuery -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="http://malsup.github.com/jquery.cycle2.js"></script>
    <!-- Cycle2 -->

</head>
<body>    
    <!-- header -->
    <header>
        <div class="container clearfix">
            <h1 class="logo">
                <!-- <img src="Udong_logo.jpg" alt="udong_project"/> -->
                <a href="#">logo</a>            
            </h1>
        <nav>
            <ul class="clearfix">
                <li><a href="#">로그인</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="#">로그아웃</a></li>
                
            </ul>
        </nav>
        </div>
    </header>
    <!-- header -->

     <!-- banner   --> <!-- 배너 슬라이드 -->
    <div class="banner">
        <ul class="banner_list cycle-slideshow" 
            data-cycle-fx="scrollHorz" 
            data-cycle-timeout="2000"
            data-cycle-slides="> li"
            data-cycle-prev=".banner .prev"
            data-cycle-next=".banner .next"
            data-cycle-pager=".banner .pager"
            >
            <li class="slide1 slide">
                <h2 class="fancy-box color main_title">WrojectTitle</h2> 
                <div class="slide_contents">
                    <p>환영 인사 </p>
                    <a href="#" class="btn">필요한 링크</a>
                </div>
            </li>
            <li class="slide2 slide">
                <h2 class="fancy-box color main_title">ProjectTitle</h2> 
                <div class="slide_contents">
                    <p>환영 인사 </p>
                    <a href="#" class="btn">필요한 링크</a>
                </div>
            </li>  
            <li class="slide3 slide">
                <h2 class="fancy-box color main_title">ProjectTitle</h2> 
                <div class="slide_contents">
                    <p>환영 인사 </p>
                    <a href="#" class="btn">필요한 링크</a>
                </div>
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
    </div>
    <!-- banner -->

    <!-- main_content -->
    <div class="main_content">
        <h3>Third Title</h3>
        <p><a href="#">All Matjip</a></p>
        <ul class="project_list">
            <li>
                <img src="../img/sample2.jpg" alt="image explane"/>
                <div class="hover_content">
                    <h4>Let's go Link!</h4>
                    <a href="#">Click for details</a>
                </div>
                <img src="../img/sample2.jpg" alt="image explane"/>
                <div class="hover_content">
                    <h4>Let's go Link!</h4>
                    <a href="#">Click for details</a>
                </div>
            </li>
            <li>
                <img src="../img/sample2.jpg" alt="image2"/>
                <div class="hover_content">
                    <h4>Let's go Link!</h4>
                    <a href="#">Click for details</a>
                </div>
            </li>
            <li>
                <img src="../img/sample2.jpg" alt="image3"/>
                <div class="hover_content">
                    <h4>Let's go Link!</h4>
                    <a href="#">Click for details</a>
                </div>
            </li>
            <li>
                <img src="../img/sample2.jpg" alt="image4"/>
                <div class="hover_content">
                    <h4>Let's go Link!</h4>
                    <a href="#">Click for details</a>
                </div>
            </li>
            <li>
                <img src="../img/sample2.jpg" alt="image5"/>
                <div class="hover_content">
                    <h4>Let's go Link!</h4>
                    <a href="#">Click for details</a>
                </div>
            </li>            
        </ul>
    </div>
    <!-- main_content -->

    <!-- footer -->
    <footer>
        <i class="fas fa-people-carry fancy-box orange"></i>
        <div class="footer_main">
            <i></i>
            <p>
                문의가 필요하신 부분은 관리자에게 이메일을 전송해주세요 ! 
                필요한 내용 작성.
            </p>
            <!-- 문의하기  -->
            <form action="#" method="POST">
                <input type="text" name="text" placeholder="Write your Text!"/> 
                <!-- <button type="submit" class="btn">Send E-mail</button> -->
                <!-- <input tpy=e"image" crc="send.png" alt="" class="btn" -->
                <input type="submit" value="Send" class="btn"/>
            </form>
        </div>
            <p class="explane">
                <a href="#">
                    <i class="fab fa-facebook"></i>
                </a>
                <a href="#">
                    <i class="fab fa-twitter"></i>
                </a>
            </p>
            <p class="copy">
                &copy; 2020 copyright
            </p>
        
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