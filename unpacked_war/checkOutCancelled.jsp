<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 취소</title>
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
   <jsp:include page="menu2.jsp"/>
   <hr>
   <div class="container">
         <h3>주문 취소</h3>
   </div>
   <br>
   <div class="container">
      <h2 class="alert alert-secondary">주문이 취소되었습니다</h2>
   </div>
   <div class="container">
      <p> <a href="./products.jsp" class="btn btn-secondary"> &laquo; 상품 목록</a>
   </div>
</body>
</html>