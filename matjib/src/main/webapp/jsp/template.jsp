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
                <li><a href="#">�α���</a></li>
                <li><a href="#">����������</a></li>
                <li><a href="#">�α׾ƿ�</a></li>
                
            </ul>
        </nav>
        </div>
    </header>
    <!-- header -->

     <!-- banner   --> <!-- ��� �����̵� -->
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
                    <p>ȯ�� �λ� </p>
                    <a href="#" class="btn">�ʿ��� ��ũ</a>
                </div>
            </li>
            <li class="slide2 slide">
                <h2 class="fancy-box color main_title">ProjectTitle</h2> 
                <div class="slide_contents">
                    <p>ȯ�� �λ� </p>
                    <a href="#" class="btn">�ʿ��� ��ũ</a>
                </div>
            </li>  
            <li class="slide3 slide">
                <h2 class="fancy-box color main_title">ProjectTitle</h2> 
                <div class="slide_contents">
                    <p>ȯ�� �λ� </p>
                    <a href="#" class="btn">�ʿ��� ��ũ</a>
                </div>
            </li>              
        </ul>
        <!-- �����̵� �̵���ư -->
        <p class="controls">
            <a href="#" class="prev">
                <i class="fas fa-angle-left"></i>
            </a>
            <a href="#" class="next">
                <i class="fas fa-angle-right"></i>
            </a>
        </p>
        <!-- �����̵� ���� �ڵ����� -->
        <p class="pager"></p>
    </div>
    <!-- banner -->

   
    <div class="main_content">
        <h3>Third Title</h3>
        <p><a href="#">All Matjip</a></p>
        <ul class="project_list" align="center">
            <li >
                <img src="../img/sample2.jpg" alt="image explane" />
                <img src="../img/sample2.jpg" alt="image explane"/>
            </li>
            <li>
                <img src="../img/sample2.jpg" alt="image2"/>
                <img src="../img/sample2.jpg" alt="image3"/>
            </li>

            <li>
                <img src="../img/sample2.jpg" alt="image4"/>
				<img src="../img/sample2.jpg" alt="image5"/>
            </li>
      
        </ul>
    </div>
   

    <!-- footer -->
    <footer>
        <i class="fas fa-people-carry fancy-box orange"></i>
        <div class="footer_main">
            <i></i>
            <p>
                ���ǰ� �ʿ��Ͻ� �κ��� �����ڿ��� �̸����� �������ּ��� ! ff
                �ʿ��� ���� �ۼ�.
            </p>
            <!-- �����ϱ�  -->
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