<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.food" %>
<%@ page import="dao.foodRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
	String cartId = session.getId();
%>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">내가 찜한 맛집 리스트</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href=" ./deleteCart.jsp?cartId=<%=cartId%>" 
					class="btn btn-danger">삭제하기</a></td>					
					</tr>
				</table>
			</div>
			<div style="padding-top: 50px">
				<table class="table table-hover">
					<tr>
						<th>음식점</th>
						<th></th>
						<th></th>
						<th>가격</th>
						<th>비고</th>
					</tr>
					<%
						int sum = 0;
						ArrayList<food> cartList = (ArrayList<food>)
						session.getAttribute("cartlist");
						if (cartList == null)
							cartList = new ArrayList<food>();
						for (int i = 0; i < cartList.size(); i++) { // 상품 리스트 하나씩 출력하기
							food product = cartList.get(i);
							int total = product.getUnitPrice() * product.getQuantity();
							sum = sum + total;
					%>
					<tr>
						<td><%=product.getfoodId()%></td>
						<td></td>
						<td></td>
						<td><%=product.getUnitPrice()%></td>
						<td><a href="./removeCart.jsp?id=<%=product.getfoodId()%>" class="badge badge-danger">삭제</a></td>
					</tr>
					<%
						}
					%>
					
				</table>
				<a href="./products.jsp" class="btn btn-secondary"> &laquo; 맛집 계속 보기</a>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
</body>
</html>