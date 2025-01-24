<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>

<%
   request.setCharacterEncoding("UTF-8");
   
   String fileName = "";
   String realFolder = "C:\\webprojectIMG";
   int maxSize = 5 * 1024 * 1024;
   String encType = "utf-8";
   
   MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
   
   String productId = multi.getParameter("productId");       // 제품 아이디(primary key)
   String pName = multi.getParameter("pName");             // 제품 이름
   String unitPrice = multi.getParameter("unitPrice");       // 제품 가격
   String description = multi.getParameter("description");    // 제품 설명
   String size = multi.getParameter("size");                // 제품 사이즈
   String category = multi.getParameter("category");          // 제품 분류(상의, 하의, 원피스, 아우터)
   String color = multi.getParameter("color");             // 색상 분류
   String temperature = multi.getParameter("temperature");    // 온도 분류
   String unitsInStock = multi.getParameter("unitsInStock");    // 재고 수
   String condition = multi.getParameter("condition");       // 제품 상태(두께움, 보통, 얇음)
   
   Integer price;
   
   if (unitPrice.isEmpty())
      price = 0;
   else
      price = Integer.valueOf(unitPrice);
   
   Integer stock;
   
   if (unitsInStock.isEmpty())
      stock = 0;
   else
      stock = Integer.valueOf(unitsInStock);
   
   Enumeration files = multi.getFileNames();
   String fname = (String) files.nextElement();
   String filename = multi.getFilesystemName(fname);
   
   PreparedStatement pstmt = null;
   
   String sql = "insert into product values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1, productId);         // 제품 아이디(primary key)
   pstmt.setString(2, pName);            // 제품 이름
   pstmt.setInt(3, price);            // 제품 가격
   pstmt.setString(4, description);      // 제품 설명
   pstmt.setString(5, size);            // 제품 사이즈
   pstmt.setString(6, category);         // 제품 분류(상의, 하의, 원피스, 아우터)
   pstmt.setString(7, color);            // 색상 분류
   pstmt.setString(8, temperature);      // 온도 분류
   pstmt.setInt(9, stock);            // 재고 수
   pstmt.setString(10, condition);         // 제품 상태(두께움, 보통, 얇음)
   pstmt.setString(11, filename);  // 제품 이미지 파일명
   pstmt.executeUpdate();
   
   if (pstmt != null)
      pstmt.close();
   if (conn != null)
      conn.close();
   
   response.sendRedirect("products.jsp");
%>