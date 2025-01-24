<%@page import="javax.swing.plaf.multi.MultiListUI"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
String filename = "";
String realFolder = "C:\\webprojectIMG";
String encType = "utf-8";
int maxSize = 5 * 1024 * 1024;

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
String productId = multi.getParameter("productId");
String pName = multi.getParameter("pName");
String unitPrice = multi.getParameter("unitPrice");
String description = multi.getParameter("description");
String size=multi.getParameter("size");
String category=multi.getParameter("category");
String color = multi.getParameter("color");
String temperature = multi.getParameter("temperature");
String unitsInStock = multi.getParameter("unitsInStock");
String condition = multi.getParameter("condition");

Integer price;
Integer stock;

if (unitPrice.isEmpty())
    price = 0;
else
    price = Integer.valueOf(unitPrice);
    
if (unitsInStock.isEmpty())
    stock = 0;
else
    stock = Integer.valueOf(unitsInStock);
    
Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "select * from product where productId = ?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, productId);
rs = pstmt.executeQuery();

if (rs.next()) {
  if (fileName != null) {
     sql = "UPDATE product SET productId=?, pName=?, unitPrice=?, description=?, size=?,category=?,color=?,temperature=?, unitsInStock=?, p_condition=?, fileName=?, quantity=? WHERE productId=?";
     pstmt = conn.prepareStatement(sql);
     pstmt.setString(1,productId);
     pstmt.setString(2, pName);
     pstmt.setInt(3,price);
     pstmt.setString(4, description);
     pstmt.setString(5, size);
     pstmt.setString(6, category);
     pstmt.setString(7, color);
     pstmt.setString(8, temperature);
     pstmt.setInt(9, stock);
     pstmt.setString(10, condition);
     pstmt.setString(11, fileName);
     pstmt.executeUpdate();
  } else {
     sql = "UPDATE product SET productId=?,pName=?, unitPrice=?, description=?,size=?,category=?,color=?,temperature=?, unitsInStock=?, condition=?, fileName=?, quantity=? WHERE productId=?";
     pstmt = conn.prepareStatement(sql);
     pstmt.setString(1,productId);
     pstmt.setString(2, pName);
     pstmt.setInt(3,price);
     pstmt.setString(4, description);
     pstmt.setString(5, size);
     pstmt.setString(6, category);
     pstmt.setString(7, color);
     pstmt.setString(8, temperature);
     pstmt.setInt(9, stock);
     pstmt.setString(10, condition);
     pstmt.executeUpdate();
  }
}
if (rs != null)
      rs.close();
if (pstmt != null)
      pstmt.close();
if (conn != null)
      conn.close();
      
response.sendRedirect("editProduct.jsp?edit=update");
%>