<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="dto.Product"%>
<%@ page import ="dao.ProductRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
   String cartId = session.getId();
%>
<title>장바구니</title>
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
   <jsp:include page="menu2.jsp" />
   <hr>
   <div class="container">
         <h3>장바구니</h3>
   </div>
   <br>
   <div class="container">
      <div class="row">
         <table width="100%">
            <tr>
               <td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">전체 삭제</a></td>
               <td align="right"><a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기</a></td>
            </tr>
         </table>
      </div>
      <div style="padding-top: 50px">
         <table class="table table-hover">
            <tr>
               <th>상품</th>
               <th>가격</th>
               <th>수량</th>
               <th>소계</th>
               <th>비고</th>
            </tr>
            <%
               int sum = 0;
               ArrayList<Product> cartList = (ArrayList<Product>)
               session.getAttribute("cartlist");
               if(cartList == null)
                  cartList = new ArrayList<Product>();
               
               for (int i = 0; i < cartList.size(); i++) {
                  Product product = cartList.get(i);
                  int total = product.getUnitPrice() * product.getQuantity();
                  sum = sum + total;
            %>
            <tr>
               <td><%=product.getProductId() %> - <%=product.getPName() %></td>
               <td><%=product.getUnitPrice() %></td>
               <td><%=product.getQuantity() %></td>
               <td><%=total %></td>
               <td><a href="./removeCart.jsp?id=<%=product.getProductId()%>" class="badge badge-danger">삭제</a></td>
            </tr>
            <%
               }
            %>
            <tr>
               <th></th>
               <th></th>
               <th>총액</th>
               <th><%=sum %></th>
               <th></th>
            </tr>
         </table>
         <a href="./products.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
      </div>
      <hr>
   </div>
   <jsp:include page="footer.jsp"/>
</body>
</html>