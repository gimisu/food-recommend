<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.*" %>
<%@ page import="dto.food" %>
<%@ page import="dao.foodRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" 
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
	<%@ include file='menu.jsp' %>
	<%! String greeting ="" ; 
	String tagline = "베스트 맛집";%>
	<img src="resources/images/bg2.jpg" style="width:100%" >
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		</div>

	<main role = "main">
	<div class = "container">
		<div class = "text-center">
			<h3>
				<%= tagline %>
			</h3>
			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm ="PM";
					hour = hour -12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속 시각: " +CT + "\n");
				%>		
		</div>
		<hr>
	</div>
	</main>	    


	<div class="container">
        <section>
        	<div class="row">
        		<div class="col-md-2.3">
                <p style="font-weight: bold; font-size: 27px; margin:40px 0 15px 15px;">오늘 추천하는 맛집</p>
                </div>
                <div class="col-md-3">
                <p style="font-size: 10px; margin:60px 20px 0px 0px"> ※사진을 누르면 상세정보가 나와요※ </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <a href="product.jsp?id=남도분식"><img src="resources/images/남도분식.jpg" width=100% ></a>              
                    <p> 영등포 떡볶이 맛집(체인점) !남도분식!</p>
                </div>
                <div class="col-md-4">
                    <a href="product.jsp?id=땡스오트"><img src="resources/images/땡스오트.jpg" width=100%></a>
                    <p> 연남동 요거트 맛집  !땡스오트!</p>
                </div>
                <div class="col-md-4">
                    <a href="product.jsp?id=킷사서울"><img src="resources/images/킷사서울.jpg" width=100%></a>
                    <p>샤로수길 맛집  !킷사서울!</p>
                </div>
            </div>
            <hr>
            <div class="row">                
                <div class="col-md-4">
                    <a href="product.jsp?id=이름없는파스타"><img src="resources/images/이름없는파스타.jpg" width=100%></a>                  
                    <p style="margin:5px 5px;">구로 양식 맛집  !이름없는파스타!</p>
                </div>
                <div class="col-md-4">
                    <a href="product.jsp?id=라화쿵부"><img src="resources/images/라화쿵부.jpg" width=100%></a>                  
                    <p style="margin:5px 5px;">영등포 마라탕 맛집  !라화쿵부!</p>
                </div>
                <div class="col-md-4">
                    <a href="product.jsp?id=곱창고"><img src="resources/images/곱창고.jpg" width=100%></a>                  
                    <p style="margin:5px 5px;">부평 곱창 맛집  !곱창고!</p>
                </div>
            </div>
        </section>
    </div>
	<%@ include file="footer.jsp" %>
</body>
</html>