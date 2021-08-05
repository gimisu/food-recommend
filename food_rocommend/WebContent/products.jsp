<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.food" %>
<%@ page import="dao.foodRepository" %>
<jsp:useBean id="productDAO" class="dao.foodRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>


   <jsp:include page="menu.jsp" />
   <div class="jumbotron">
      <div class="container">
         <h3 class="display-3">맛집 리스트</h3>
      </div>
   </div>
   <%
   	foodRepository dao = foodRepository.getInstance();
         ArrayList<food> listOfProducts = dao.getAllProducts();
         for (int i = 0; i < listOfProducts.size(); i++){
       	  food product = listOfProducts.get(i);
         	System.out.println("MSG: " + product.getFilename());
         
         //String path = application.getRealPath("/WEB-INF/images/");
   %>
  <div class="container">
      <div class="row" align="center">
         <%
            
         %>
            <div class="row">
                <div class="col-md-4">
                  <img src="./resources/images/<%=product.getFilename() %>" 
            style="width: 40%">        
               </div>
               <div class="col-md-5">          
                  <h3><%=product.getName() %></h3>
                  <p><%=product.getDescription() %></p>
                  <p><%=product.getScore() %> |
                  <%=product.getUnitPrice() %> 원 </p>                  
               </div>
               <div class = "col-md-3">
                  <p> <a href="./product.jsp?id=<%=product.getfoodId()%>"
               class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a> 
               </div>
               
            <div class = "col-md-12">
                 <hr>
              </div>
         <%
          }
         %>
      </div>
      
      <hr>
   </div>
   <jsp:include page="footer.jsp" />
  </div>
</body>
</html>