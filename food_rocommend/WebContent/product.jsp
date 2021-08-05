<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.food"%>
<%@ page import="dao.foodRepository"%>
<jsp:useBean id="productDAO" class="dao.foodRepository" scope="session" />

<%
	request.setCharacterEncoding("UTF8");
response.setCharacterEncoding("UTF8");
%>

<html>
<head>

<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("내가 찜한 리스트에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}

	}
</script>
</head>
<body>

	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">맛집 상세 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		foodRepository dao = foodRepository.getInstance();
		food product = dao.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=product.getFilename()%>" width=100% />
			</div>
			<div class="col-md-5">
				<h3><%=product.getName()%></h3>
				<p><%=product.getDescription()%>
				<p>
					<b>음식 코드 : </b><span class="badge badge-danger"> <%=product.getfoodId()%></span>
				<p>
					<b>주소</b> :
					<%=product.getPublisher()%>
				</p>
				<p>	
					<b>별점</b> :
					<%=product.getScore()%>
				<h4><%=product.getUnitPrice()%>원
				</h4>
				<p>
				<form name="addForm" action="./addCart.jsp?id=<%=product.getfoodId()%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 찜하기
						&raquo;</a> <a href="./cart.jsp" class="btn btn-warning"> 찜한 리스트
						&raquo;</a> <a href="./products.jsp" class="btn btn-secondary"> 맛집 목록 &raquo;</a>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>