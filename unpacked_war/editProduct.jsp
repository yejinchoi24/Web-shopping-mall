<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 편집</title>
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
    function deleteConfirm(id) {
       if (confirm("해당 상품을 삭제합니다!") == true)
          location.href = "./deleteProduct.jsp?id=" + id;
       else
          return;
    }
</script>
</head>
<%
   String edit = request.getParameter("edit");
%>
<body>
   <jsp:include page="menu2.jsp" />
   <hr>
   <div class="container">
         <h3 >제품 편집</h3>
      </div>
   <br>
   <div class="container">
      <div class="row" align="center">
         <%@ include file="dbconn.jsp"%>
         <%
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            String sql = "select * from product";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
         %>
         <div class="col-md-4">
            <img src="./resources/img/<%=rs.getString("fileName") %>" style="width: 300px; height: 300px;">
            <h5><%=rs.getString("pName")%></h5>
            <p><%=rs.getString("temperature")%>
            <p><%=rs.getString("color")%>
            <p style="font-weight: bold; color: blue;"><%=rs.getString("unitPrice")%>원
            <p>
            <%
               if (edit.equals("update")) {
            %>
            <a href="./updateProduct.jsp?id=<%=rs.getString("productId") %>"
               class="btn btn-secondary" role="button">수정 &raquo;></a>
            <%
               } else if (edit.equals("delete")) {
            %>
         <a href="#" onclick="deleteConfirm('<%=rs.getString("productId")%>')"
            class="btn btn-secondary" role="button">삭제 &raquo;></a>
         <%
            }
         %>
      </div>
      <%
          }
      if(rs != null)
         rs.close();
      if(pstmt != null)
         pstmt.close();
      if(conn != null)
         conn.close();
      %>
      </div>
      <hr>
   </div>
   <jsp:include page="footer.jsp"/>
</body>
</html>