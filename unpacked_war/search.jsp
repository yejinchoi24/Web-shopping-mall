<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>검색 결과</title>
<style>
@font-face {
	font-family: 'MapoGoldenPier';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff')
		format('woff');
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
	<div class="container" style="padding: 0;">
		<h2>검색 결과</h2>
	</div>
	<br>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			// 입력한 검색어 가져오기
			String searchKeyword = request.getParameter("searchKeyword");

			// SQL 쿼리 생성
			String sql = "SELECT * FROM product WHERE pName LIKE ? OR (temperature LIKE ?) OR color LIKE ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + searchKeyword + "%");
			pstmt.setString(2, "%" + searchKeyword + "%");
			pstmt.setString(3, "%" + searchKeyword + "%");

			rs = pstmt.executeQuery();

			boolean hasResult = false; // 검색 결과 여부를 확인하기 위한 변수

			while (rs.next()) {
				String pName = rs.getString("pName");
				String color = rs.getString("color");
				String temperature = rs.getString("temperature");
				if (!pName.contains(searchKeyword) && !color.contains(searchKeyword) && !temperature.contains(searchKeyword)) {
					continue; // 검색어가 제품 이름이나 색상, 온도에 포함되지 않으면 건너뛰기
				}

				hasResult = true; // 검색 결과가 있음을 표시
			%>
			<div class="col-md-4">
				<img src="./resources/img/<%=rs.getString("fileName")%>" style="width: 300px; height: 300px;">
				<h5><%=rs.getString("pName")%></h5>
				<p><%=temperature%></p>
				<p><%=color%></p>
				<p style="font-weight: bold; color: blue;"><%=rs.getString("unitPrice")%>원
				</p>
				<p>
					<a href="./product.jsp?id=<%=rs.getString("productId")%>" class="btn btn-secondary"
						role="button"
					>상세 정보 &raquo;</a>
				</p>
			</div>
			<%
			}

			// 검색 결과가 없는 경우에 대한 처리
			if (!hasResult) {
			%>
			<div class="col-md-12">
				<p>정확하게 검색해주세요.</p>
			</div>
			<%
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
