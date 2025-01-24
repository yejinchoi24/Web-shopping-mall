<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>회원 정보</title>
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
   <jsp:include page="/menu3.jsp" />
   <hr>
   <div class="container">
         <h3>회원정보</h3>
   </div>
   <br>
   <div class="container" align="center">
      <%
         String msg = request.getParameter("msg");

         if (msg != null) {
            if (msg.equals("0"))
               out.println(" <h2 class='alert alert-secondary'>회원정보가 수정되었습니다.</h2>");
            else if (msg.equals("1"))
               out.println(" <h2 class='alert alert-secondary'>회원가입을 축하드립니다.</h2>");
            else if (msg.equals("2")) {
               String loginId = (String) session.getAttribute("sessionId");
               out.println(" <h2 class='alert alert-secondary'>" + loginId + "님 환영합니다</h2>");
            }            
         } else {
            out.println("<h2 class='alert alert-danger'>회원정보가 삭제되었습니다.</h2>");
         }
      %>
   </div>   
</body>
</html>