<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <link href="../css/style2.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.12.3.js" type="text/javascript"></script>
    <script src="js/script.js" type="text/javascript" defer="defer"></script>
    <title>좌우슬라이드버튼</title>
<script type="text/javascript">
var idx = 0;
var i = 0; // 사진 인덱스를 저장할 변수
$(".pre").click(function() { // img 크기만큼 왼쪽으로 이동
  idx = idx - 1;
  if (idx < 1) {
    i = idx % 4;
    i = i + 4;
    if (i == 4) {
      i = 1;
    }
  } else {
    i = idx % 4;
    if (i == 0) {
      i = 4;
    }
  }
  $(".imgSlide>li:last-child").remove();
  $(".imgSlide").prepend("<li><img src='../img/sample" + i + ".jpg' alt=''></li>");
  $(".imgSlide").css({
    "left": "-3200px"
  });
  $(".imgSlide").stop().animate({
    "left": "-2400px"
  }, "slow");
  console.log(idx);
});
$(".next").click(function() { // img 크기만큼 오른쪽으로 이동
  idx = idx + 1;
  if (idx < 1) {
    i = idx % 4;
    i = i + 3;
  } else {
    i = idx % 4;
    if (i == 0) {
      i = 4;
    }
  }
  $(".imgSlide>li:first-child").remove();
  $(".imgSlide").append("<li><img src='../img/sample" + i + ".jpg' alt=''></li>");
  $(".imgSlide").css({
    "left": "-1600px"
  });
  $(".imgSlide").stop().animate({
    "left": "-2400px"
  }, "slow");
  console.log(idx);
});
</script>
</head>
<body>
<header>


</header>
<body>
    <div class="slide">
      <ul class="imgSlide">
        <li><img src="../img/sample1.jpg" alt=""></li>
        <li><img src="../img/sample2.jpg" alt=""></li>
        <li><img src="../img/sample3.jpg" alt=""></li>
        <li><img src="../img/sample4.jpg" alt=""></li>
      </ul>
      <div class="moveBtn">
        <a href="#" class="pre"> 
        < </a>
            <a href="#" class="next"> > </a>
      </div>
    </div>
</body>
<footer>

</footer>
</body>
</html>