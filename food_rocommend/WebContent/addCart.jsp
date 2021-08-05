<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.food" %>
<%@ page import="dao.foodRepository" %>
<%
	request.setCharacterEncoding("UTF8");
	response.setCharacterEncoding("UTF8");
%>

<%
	String id = request.getParameter("id");
	

	if (id == null || id.trim().equals("")) {
		System.out.print("ERROR");
		response.sendRedirect("products.jsp");
		return;
	}
	
	foodRepository dao = foodRepository.getInstance();
	
	food food = dao.getProductById(id);
	if (food ==null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<food> goodsList = dao.getAllProducts();
	food goods = new food();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getfoodId().equals(id)){
	break;
		}
	}
	
	ArrayList<food> list = (ArrayList<food>) session.getAttribute("cartlist");
	if (list == null) {
		list = new ArrayList<food>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0;
	food goodsQnt = new food();
	for (int i = 0; i <list.size(); i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getfoodId().equals(id)) {
	cnt++;
	int orderQuantity = goodsQnt.getQuantity() + 1;
	goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if (cnt == 0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	id = URLEncoder.encode(id, "UTF-8");
	
	System.out.println(id);
	
	
	response.sendRedirect("product.jsp?id=" + id);
%>