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
	<script type="text/javascript">
	
	
	
	</script>
</head>
<body> 
<div class = "mainbody">
	<div class = "web">
    <div class = "headerdiv">
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
                	<li><a href="#">ȸ������</a></li>
                	<li class = "my"><a href="#">�� ����</a>
                		<ul class = "my-test">
                			<li>���ǻ���</li>
                			<li>������ ����</li>
                			<li>��й�ȣ ����</li>
                			<li>�� ������</li>
                		</ul>
                	</li>
                	<li class = "my2"><a href="#">��������</a>
                		<ul class = "my2-test">
                			<li>�������</li>
                			<li>����</li>
                			<li>����Ȯ��</li>
                		</ul>
                	</li>
            	</ul>
        	</nav>
        	
        	</div>
    	</header>
 	   <!-- header -->
	</div>
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
                <div class="slide_contents">
                    <a href="#" class="btn">d</a>
                </div>
            </li>
            <li class="slide2 slide">
                <div class="slide_contents">
                    <a href="#" class="btn">d</a>
                </div>
            </li>  
            <li class="slide3 slide">
                <div class="slide_contents">
                    <a href="#" class="btn">d</a>
                </div>
            </li>              
        </ul>
        <!-- �����̵� �̵���ư -->
        <!-- �� �Ǵ°���? -->
        <div class = "button-prev">
        <button type = "button" class = "prev">
                <i class="fas fa-angle-left fa-4x"></i>
        </button>
        </div>
        <div class = "button-next">
        <button class = "next">
                <i class="fas fa-angle-right fa-4x"></i>
        </button>
        </div>
        <!-- �����̵� ���� �ڵ����� -->
        <div class = "pagerdiv">
        <p class="pager"></p>
        </div>
    </div>
    <!-- banner -->

    <!-- main_content -->
    <div class="main_rnaking">
		<h1 class ="main_title">�α� �޴� top6</h1> 
		<div class = "king_image">
			<ul class = "image">
				<li><a><img alt="" src="../img/sample1.jpg" width="300px" height="300px"/>1��</a>
					<a><img alt="" src="../img/sample1.jpg" width="300px" height="300px"/>2��</a>
					<a><img alt="" src="../img/sample1.jpg" width="300px" height="300px"/></a>
					<a><img alt="" src="../img/sample1.jpg" width="300px" height="300px"/></a>
					<a><img alt="" src="../img/sample1.jpg" width="300px" height="300px"/></a>
				</li>
			</ul>
		</div>
    </div>
    <div class="main_rnaking2">
		<h1>�������� �޴� ������</h1>
		<table border="10" align ="center">
			<tr align = "center" border = "10" margin-top = "5"><td>123</td><td>123</td></tr>
			<tr align = "center" border = "5"><td>456</td><td>456</td></tr>
			<tr align = "center" border = "5"><td>789</td><td>789</td></tr>
			<tr align = "center" border = "5"><td>000</td><td>000</td></tr>
			<tr align = "center" border = "5"><td>111</td><td>111</td></tr>
		</table>
    </div>
    <!-- main_content -->

    <!-- footer -->
    <footer>
        <i class="fas fa-people-carry fancy-box orange"></i>
        <div class="footer_main">
            <i></i>
            <p>
                ���ǰ� �ʿ��Ͻ� �κ��� �����ڿ��� �̸����� �������ּ��� ! 
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
    </div>
</div>
</body>
</html>