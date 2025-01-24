<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
   request.setCharacterEncoding("UTF-8");

   String cartId = session.getId();
   
   String shipping_cartId = "";
   String shipping_name = "";
   String shipping_addressName = "";
   String shipping_zipCode = "";
   String shipping_memo = "";
   
   Cookie[] cookies = request.getCookies();
   
   if(cookies != null) {
      for (int i = 0; i < cookies.length; i++) {
         Cookie thisCookie = cookies[i];
         String n = thisCookie.getName();
         if (n.equals("Shipping_cartId"))
            shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
         if (n.equals("Shipping_name"))
            shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
         if (n.equals("Shipping_addressName"))
             shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
         if (n.equals("Shipping_zipCode"))
            shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
         if (n.equals("Shipping_memo"))
            shipping_memo = URLDecoder.decode((thisCookie.getValue()), "utf-8");
      }
   }
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 정보</title>
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
   <jsp:include page="menu.jsp"/>
   <hr>
   <div class="container">
         <h3>주문 정보</h3>
   </div>
   <br>
   <div class="container col-8 alter alter-info">
      <div class="text-center">
         <h1>주문확인</h1>
      </div>
      <div class="row justify-content-between">
         <div class="col-4" align="left">
            <strong>배송 주소</strong> <br> 성명 : <% out.println(shipping_name); %> <br> 주소 : <% out.println(shipping_addressName); %><br> 우편번호 : <% out.println(shipping_zipCode); %>
         </div>
      </div>
      <div>
         <table class="table table-hover">
         <tr>
            <th class="text-center">제품명</th>
            <th class="text-center">개수</th>
            <th class="text-center">가격</th>
            <th class="text-center">소계</th>
         </tr>
         <%
            int sum = 0;
            ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
            if(cartList == null)
               cartList = new ArrayList<Product>();
            for (int i = 0; i < cartList.size(); i++) {
               Product product = cartList.get(i);
               int total = product.getUnitPrice() * product.getQuantity();
               sum = sum + total;
         %>
         <tr>
            <td class="text-center"><em><%=product.getPName() %></em></td>
            <td class="text-center"><%=product.getQuantity() %></td>
            <td class="text-center"><%=product.getUnitPrice() %>원</td>
            <td class="text-center"><%=total %>원</td>
         </tr>
         <%
            }
         %>
         <tr>
            <td></td>
            <td></td>
            <td class="text-right"><strong>총액: </strong></td>
            <td class="text-center text-danger"><strong><%=sum %></strong></td>
         </tr>
         </table>
         
         <a href="./shippingInfo.jsp?cartId=<%=shipping_cartId %>"class="btn btn-secondary" role="button"> 이전 </a>
         <a href="./thankCustomer.jsp" class="btn btn-success" role="button"> 주문 완료 </a>
         <a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
      </div>
   </div>
</body>
</html>