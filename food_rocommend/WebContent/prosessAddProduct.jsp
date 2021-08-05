<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.food" %>
<%@ page import="dao.foodRepository" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	
	String path = "/resources/images/";
	String realFolder = application.getRealPath(path);
	int maxSize = 5*1024*1024; //최대 업로드될 파이의 크기5mb
	String encTupe = "utf-8"; //인코딩 타입
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,	new DefaultFileRenamePolicy());

    String productId = multi.getParameter("productId");
    String name = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String description = multi.getParameter("description");
    String manufacturer = multi.getParameter("manufacturer");
    String unitsInStock = multi.getParameter("unitsInStock");
    String condition = multi.getParameter("condition");

    Integer price;
   
    if(unitPrice.isEmpty())
       price = 0;
    else
       price = Integer.valueOf(unitPrice);
   
    long stock;
   
    if(unitsInStock.isEmpty())
       stock =0;
    else
       stock = Long.valueOf(unitsInStock);
    
    Enumeration files =multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);
    
    foodRepository dao = foodRepository.getInstance();
    
    food newProduct = new food();
    newProduct.setfoodId(productId);
    newProduct.setName(name);
    newProduct.setUnitPrice(price);
    newProduct.setDescription(description); 
    newProduct.setUnitsInStock(unitsInStock);
    

    
    response.sendRedirect("products.jsp");
%>
