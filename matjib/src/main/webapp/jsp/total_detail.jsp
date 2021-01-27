<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/css/total_detail.css">

<link href="css/star-rating.css" media="all" rel="stylesheet"
   type="text/css" />
<title>Insert title here</title>
<script type="text/javascript">
function loginFirst(){
   alert("�α��� ���� �� �ּ���.");
   return true;
}
</script>
</head>

<body>
   <script type="text/javascript">
      
   </script>

   <div class="detail_inner">
      <div class="row">
         <div class="leftcolumn">
            <div class="side">
               <ul>
                  <li><a href="../total/detail.html"><img
                        src="${pageContext.request.contextPath }/image/${Store.main_image }"
                        alt="image_sample"></a></li>
               </ul>
            </div>

            <div class="main">
               <div>
                  <span><a href="#">${Store.store_no } ${Store.store_name }</a></span>


                  <h3>${Store.store_addr }</h3>
               </div>

               <div>
                  <p>${Store.store_tel }</p>
                  <p>${Store.store_ceo }</p>
                  <p>${Store.store_category }</p>
                  <p>${Store.store_context }</p>
               </div>
            </div>
         </div>

         <!-- ���� -->
      </div>
      
      <form action="../review/review_regist.html" method="post" id=""> 
         <div class="review_row">
            <div class="reviewcolumn">
               <div class="review">               
                  <ul>
                     <li>
                     <img src="${pageContext.request.contextPath }/image/${User.profile }" alt="���並 ����Ͻ÷��� �α����� �����ϼ���"></li>
                  </ul>
               </div>

               <div class="review_main">
                  <label for="review_star">���� :</label> <select id="review_star"
                     name="review_star">
                     <option value="0" selected>�١١١١�</option>
                     <option value="1">�ڡ١١١�</option>
                     <option value="2">�ڡڡ١١�</option>
                     <option value="3">�ڡڡڡ١�</option>
                     <option value="4">�ڡڡڡڡ�</option>
                     <option value="5">�ڡڡڡڡ�</option>
                  </select><br/><br/>
                  <c:if test="${sessionScope.loginUser == null }">
                  <input type="text" id="review_context" name="review_context" onclick="loginFirst()"
                  disabled="true">
                  </c:if>
                    <c:if test="${sessionScope.loginUser != null }">
                  <input type="text" id="review_context" name="review_context">
                  </c:if>
                  <input type="hidden" name="store_no" value="${Store.store_no }">
                  <input type="hidden" name="user_no" value="${User.user_no }">
                  <c:if test="${sessionScope.loginUser == null }">
                  <input type="submit" value="���� ����ϱ�" onclick="loginFirst()">
                  </c:if>
                  <c:if test="${sessionScope.loginUser != null}">
                   <input type="submit" value="���� ����ϱ�">
                  </c:if>
               </div>
               <!-- </form>    -->
            </div>
         </div>
      </form>


      <c:forEach var="Review" items="${ReviewList }">
         <!-- ���� ���� -->
         <div class="review_row">
            <div class="reviewcolumn">
               <div class="review">
                  <!-- ���� -->                  
                  <ul>
                     <li><img
                        src="${pageContext.request.contextPath }/image/${Review.profile }"
                        alt="������ �̹���"></li>
                  </ul>
               </div>
               <!-- <form action="#" method="post" name="cmtform"> -->
               <div class="review_main">
                  <div>
                  <c:if test="${Review.review_star == 1}">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>                  
                  </c:if>
                  <c:if test="${Review.review_star == 2}">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>   
                  </c:if>
                  <c:if test="${Review.review_star == 3}">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star"></span>
                  <span class="fa fa-star"></span>
                  </c:if>
                  <c:if test="${Review.review_star == 4}">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star"></span>
                  </c:if>
                  <c:if test="${Review.review_star == 5}">
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  <span class="fa fa-star checked"></span>
                  </c:if>                     
                     <br/>
                     <span>ID : ${Review.nickname } &emsp; ${Review.gender } &emsp; ����� : ${Review.review_reg_date }</span><br /> <br /> 
                     <span>${Review.review_context }
                     </span>
                  </div>
               </div>
               <!-- </form>    -->
            </div>
         </div>
      </c:forEach>
   </div>




</body>
</html>