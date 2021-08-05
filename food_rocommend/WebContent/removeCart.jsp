<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.food" %>
<%@ page import="dao.foodRepository" %>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}
	
	foodRepository dao = foodRepository.getInstance();
	
	food food = dao.getProductById(id);
	if (food == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<food> cartList = (ArrayList<food>) session.
	getAttribute("cartlist");
	food goodsQut = new food();
	for (int i = 0; i <cartList.size(); i++) {
		goodsQut = cartList.get(i);
		if (goodsQut.getfoodId().equals(id)){
	cartList.remove(goodsQut);
		}
	}
	
	response.sendRedirect("cart.jsp");
%>