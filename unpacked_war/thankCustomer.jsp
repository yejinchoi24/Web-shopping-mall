<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>주문 완료</title>
<style>
   @font-face {
      font-family: 'MapoGoldenPier';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
      font-weight: normal;
      font-style: normal;
   }
   body {
      font-family: 'MapoGoldenPier', sans-serif;
   }
</style>
</head>
<body>
   <%
      String shipping_cartId ="";
      
      Cookie[] cookies = request.getCookies();
      
      if (cookies != null){
         for (int i = 0; i < cookies.length; i++) {
            Cookie thisCookie = cookies[i];
            String n = thisCookie.getName();
            if (n.equals("Shipping_cartId"))
               shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
         }
      }
   %>
   <jsp:include page="menu2.jsp"/>
   <hr>
   <div class="container">
         <h3>주문 완료</h3>
   </div>
   <br>
   <div class="container">
      <h2 class="alert alert-secondary">thank you</h2>
      <p> 주문번호 : <% out.println(shipping_cartId); %></p>
   </div>
   <div class="container">
      <p> <a href="./products.jsp" class="btn btn-secondary"> &laquo; 상품 목록</a></p>
   </div>
</body>
</html>
<%
   session.invalidate();

   for (int i = 0; i < cookies.length; i++) {
      Cookie thisCookie = cookies[i];
      String n = thisCookie.getName();
      if (n.equals("Shipping_cartId"))
         thisCookie.setMaxAge(0);
      if (n.equals("Shipping_name"))
         thisCookie.setMaxAge(0);
      if (n.equals("Shipping_addressName"))
          thisCookie.setMaxAge(0);
      if (n.equals("Shipping_zipCode"))
         thisCookie.setMaxAge(0);
      if (n.equals("Shipping_memo"))
         thisCookie.setMaxAge(0);
      
      response.addCookie(thisCookie);
   }
%>
