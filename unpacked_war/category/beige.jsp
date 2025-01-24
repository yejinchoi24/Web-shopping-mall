<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<title> 베이지/브라운 제품 목록</title>
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
   <jsp:include page="../menu3.jsp" />
   <hr>
   <div class="container" style="padding: 0;">
         <h2>베이지/브라운</h2>
      </div>
   <br>
   <div class="container">
      <div class="row" align="center">
             <%@include file="../dbconn.jsp" %>
		     <%
                PreparedStatement pstmt=null;
                ResultSet rs=null;
                String sql="select* from product where color='베이지/브라운'";
                pstmt=conn.prepareStatement(sql);
                rs=pstmt.executeQuery();
                while(rs.next()){
            %>
            
			<div class="col-md-4">
				<img src="../resources/img/<%=rs.getString("fileName") %>"
					style="width: 300px; height: 300px;">
				<h5><%=rs.getString("pName")%></h5>
				<p><%=rs.getString("color")%>
				<p style="font-weight: bold; color: blue;"><%=rs.getString("unitPrice")%>원
				<p>
               <a href="../product.jsp?id=<%=rs.getString("productId")%>"
                  class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
         </div>
         <%
              }
                
			
			
			  if(rs != null)
        		rs.close();
			  
        	  if(pstmt != null)
        		pstmt.close();
        		
              if(conn != null)
        		pstmt.close();
       %>
      </div>
      <hr>
   </div>
   <jsp:include page="../footer.jsp" />
</body>
</html>