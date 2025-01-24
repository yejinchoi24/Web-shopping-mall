<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>배송 정보</title>
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
         <h3>배송 정보</h3>
   </div>
   <br>
   <div class="container">
      <form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
         <input type="hidden" name="cartId" value="<%=request.getParameter("cartId") %>"/>
         <div class="form-group row">
            <label class="col-sm-2">성명</label>
            <div class="col-sm-3">
               <input name="name" type="text" class="form-control" />
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">주소</label>
            <div class="col-sm-5">
               <input name="addressName" type="text" class="form-control" />
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">우편번호</label>
            <div class="col-sm-3">
               <input name="zipCode" type="text" class="form-control" />
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">배송메모</label>
            <div class="col-sm-5">
               <input name="memo" type="text" class="form-control" />
            </div>
         </div>
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
               <a href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>" class="btn btn-secondary" role="button"> 이전 </a>
               <input type="submit" class="btn btn-primary" value="등록"/>
               <a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
            </div>
         </div>
      </form>
   </div>
</body>
</html>