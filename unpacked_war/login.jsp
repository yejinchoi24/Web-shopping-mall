<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Login</title>
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
   <br>
   <br>
   <div class="container" align="center">
   <div class="col-md-4 col-md-offset-4">
      <h5 class="form-signin-heading">아이디와 비밀번호를 입력해주세요</h5>
      <%
      String error = request.getParameter("error");
      if (error != null) {
         out.println("<div class='alert alert-danger'>");
         out.println("아이디와 비밀번호를 확인해주세요");
         out.println("</div>");
      }
      %>
      <form class="form-signin" action="j_security_check" method="post">
         <div class="form-group">
            <label for="inputUserName" class="sr-only">User Name</label> 
            <input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus>
         </div>
         <div class="form-group">
         <label for="inputPassword" class="sr-only">Password</label>
         <input type="password" class="form-control" placeholder="Password" name='j_password' required>
         </div>
         <button class="btn btn btn-lg btn-secondary btn-block" type="submit">로그인</button>
      </form>
   </div>
   </div>
</body>
</html>