<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
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
<script type="text/javascript">
   function addToCart() {
      if(confirm("제품을 장바구니에 추가하시겠습니까?")) {
         document.addForm.submit();
      } else {
         document.addForm.reset();
      }
   }
</script>
</head>
<body>
   <jsp:include page="menu2.jsp" />
   <hr>
   <div class="container">
      <div class="row">
      <%@ include file="dbconn.jsp" %>
      <%
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         String id = request.getParameter("id");
         String sql = "SELECT * FROM product WHERE productId = ?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, id);
         rs = pstmt.executeQuery();
         if (rs.next()) {
      %>
         <div class="col-md-5">
            <img src="./resources/img/<%=rs.getString("fileName")%>"
               style="width: 100%">
         </div>
         <div class="col-md-6">
            <h3><%=rs.getString("pName")%></h3>
            <p><%=rs.getString("description")%></p>
            <p>
               <b>상품 코드 : </b><span class="badge badge-danger"> <%=rs.getString("productId")%></span>
            </p>
            <p>
               <b>온도</b> :
               <%=rs.getString("temperature")%></p>
            <p>
               <b>색상</b> :
               <%=rs.getString("color")%></p>
            <p>
               <b>사이즈</b> :
              <%=rs.getString("size")%></p>
            <p>
               <b>두께</b> :
               <%=rs.getString("p_condition")%></p>
            <p>
               <b>분류</b> :
               <%=rs.getString("category")%></p>
            <p>
               <b>재고 수</b> :
               <%=rs.getString("unitsInStock")%></p>
            <h4><%=rs.getString("unitPrice")%>원</h4> 
            <p> <form name="addForm" action="./addCart.jsp?id=<%=rs.getString("productId")%>" method="post">
                  <a href="#" class="btn btn-info" onclick="addToCart()">제품 주문&raquo;</a>
                  <a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
                  <a href="./products.jsp" class="btn btn-secondary">제품 목록 &raquo;</a>
               </form>
         </div>
         <%
         } else {
            response.sendRedirect("excepeionNoProductId");
         }

         if (rs != null)
            rs.close();
         if (pstmt != null)
            pstmt.close();
         if (conn != null)
            conn.close();
      %>
      </div>
      <hr>
   </div>
   <jsp:include page="footer.jsp" />
</body>
</html>
