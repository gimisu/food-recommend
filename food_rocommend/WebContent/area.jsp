<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.food" %>
<%@ page import="dao.foodRepository" %>
<jsp:useBean id="productDAO" class="dao.foodRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>지역별 추천 맛집</title>
</head>
<body>
   <jsp:include page="menu.jsp" />
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">지역별 추천 맛집</h1>
      </div>
   </div>
	
	<div >
      <div class="container">
      <div class="row" align="center">
         <h2 class="col-md-3" >Seoul</h2>        
                <div class="col-md-3">
                    <a href="product.jsp?id=남도분식"><img src="resources/images/남도분식.jpg" width=100% ></a>              
                    <p>!남도분식!</p>
                </div>
                <div class="col-md-3">
                    <a href="product.jsp?id=땡스오트"><img src="resources/images/땡스오트.jpg" width=100%></a>
                    <p> !땡스오트!</p>
                </div>
               <div class = "col-md-3">
                  <p> <a href="./products.jsp"
               class="btn btn-secondary" role="button"> 서울 맛집></a>                
                </div>
      </div>         
      </div>
   </div>
 
   <div >
      <div class="container">
      <div class="row" align="center">
         <h2 class="col-md-3" >Gyeonggi-do</h2>         
          	<div class="col-md-3">
                    <a href="product.jsp?id=킷사서울"><img src="resources/images/킷사서울.jpg" width=100%></a>
                    <p>!킷사서울!</p> 
            </div>        
           	<div class="col-md-3">
                    <a href="product.jsp?id=이름없는파스타"><img src="resources/images/이름없는파스타.jpg" width=100%></a>                  
                    <p style="margin:5px 5px;">!이름없는파스타!</p>
           </div>         
           
               <div class = "col-md-3">
                  <p> <a href="./products.jsp"
               class="btn btn-secondary" role="button"> 경기 맛집></a> 
               </div>         
      </div>
   </div>
   </div>
 
   <div >
      <div class="container">
      <div class="row" align="center">
         <h2 class="col-md-3" >Incheon</h2>                            
                <div class="col-md-3">
                    <a href="product.jsp?id=라화쿵부"><img src="resources/images/라화쿵부.jpg" width=100%></a>                  
                    <p style="margin:5px 5px;">!라화쿵부!</p>
                </div>
                <div class="col-md-3">
                    <a href="product.jsp?id=곱창고"><img src="resources/images/곱창고.jpg" width=100%></a>                  
                    <p style="margin:5px 5px;">!곱창고!</p>
                </div>
         
               <div class = "col-md-3">
                  <p> <a href="./products.jsp"
               class="btn btn-secondary" role="button"> 인천 맛집 ></a> 
               </div>         
      </div>
   </div>
   </div>

  <div class="container">

   <jsp:include page="footer.jsp" />
  </div>
</body>
</html>