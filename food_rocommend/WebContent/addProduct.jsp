<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.food" %>
<jsp:useBean id="productDAO" class="dao.foodRepository" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>도서 등록</title>
</head>
<body>
   <jsp:include page= "menu.jsp" />
   <div class= "jumbotron">
      <div class="container">
         <h1 class="dispaly-3">맛집 등록</h1>
      </div>
   </div>
   <div class = "container">
      <form name="newBook" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
         <div class="form-group row">
            <label class = "col-sm-2">음식 분류</label>
            <div class = "col-sm-3">
               <input type="text" name="bookId" id="bookId" class="form-contral">
            </div>
         </div>
         <div class="form-group row">
            <label class = "col-sm-2">음식점 이름</label>
            <div class = "col-sm-3">
               <input type="text" name="name" id="name" class="form-contral">
            </div>
         </div>
         <div class="form-group row">
            <label class = "col-sm-2">가격</label>
            <div class = "col-sm-3">
               <input type="text" name="unitPrice" id="unitPrice" class="form-contral">
            </div>
         </div>
         <div class="form-group row">
            <label class = "col-sm-2">별점</label>
            <div class = "col-sm-3">
               <input type="text" name="author" class="form-contral">
            </div>
         </div>
         
         <div class="form-group row">
            <label class = "col-sm-2">음식점 상세정보</label>
            <div class = "col-sm-5">
               <textarea name="description" cols="50" rows="2" class="form-control" placeholder="10자 이상 적어주세요"></textarea>
            </div>
         </div>         
         <div class="form-group row">
            <label class = "col-sm-2">이미지</label>
            <div class = "col-sm-5">
               <input type="file" name="bookImage" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
               <input type="button" class="btn btn-primary" value="등록" onclick="CheckAddProduct()">
            </div>
         </div>
      </form>
   </div>

</body>
</html>