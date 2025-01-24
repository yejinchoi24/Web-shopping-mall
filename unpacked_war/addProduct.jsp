<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>

<title>제품 등록</title>
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
         <h3>제품 등록</h3>
   </div>
   <br>
   <div class="container">
   <div class="text-right">
   <a href="logout.jsp" class="btn btn-sm btn-secondary pull-right">logout</a>
   </div>
      <form name="newProduct" action="./processAddProduct.jsp"
         class="form-horizontal" method="post" enctype="multipart/form-data">
         <div class="form-group row">
            <label class="col-sm-2">제품 코드</label>
            <div class="col-sm-3">
               <input type="text" id="productId" name="productId" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품명</label>
            <div class="col-sm-3">
               <input type="text" id="pName" name="pName" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품 가격</label>
            <div class="col-sm-3">
               <input type="text" id="unitPrice" name="unitPrice" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품 설명</label>
            <div class="col-sm-5">
               <textarea name="description" cols="50" rows="3"
                  class="form-control"></textarea>
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품 사이즈</label>
            <div class="col-sm-5">
               <input type="radio" name="sizeXS" value="XS">XS 
               <input type="radio" name="sizeS" value="S">S 
               <input type="radio" name="sizeM" value="M">M 
               <input type="radio" name="sizeL" value="L">L 
               <input type="radio" name="sizeXL" value="XL">XL
               <input type="radio" name="sizeF" value="F">F
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품 분류</label>
            <div class="col-sm-5">
               <input type="radio" name="category" value="상의">상의
                <input type="radio" name="category" value="하의">하의 
                <input type="radio" name="category" value="원피스">원피스 
                <input type="radio" name="category" value="아우터">아우터
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">색상 분류</label>
            <div class="col-sm-10">
               <input type="radio" name="color" value="화이트/아이보리">화이트/아이보리
               <input type="radio" name="color" value="베이지/브라운">베이지/브라운 
               <input type="radio" name="color" value="오렌지">오렌지 
               <input type="radio" name="color" value="핑크">핑크 
               <input type="radio" name="color" value="바이올렛">바이올렛 
               <input type="radio" name="color" value="블루/네이비">블루/네이비 
               <input type="radio" name="color" value="그린">그린 
               <input type="radio" name="color" value="그레이/블랙">그레이/블랙
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">온도 분류</label>
            <div class="col-sm-10">
               <input type="radio" name="temperature" value="~9°C">~9°C 
               <input type="radio" name="temperature" value="10°C~15°C">10°C~15°C
               <input type="radio" name="temperature" value="16°C~20°C">16°C~20°C
               <input type="radio" name="temperature" value="21°C~25°C">21°C~25°C
               <input type="radio" name="temperature" value="26°C~29°C">26°C~29°C
               <input type="radio" name="temperature" value="30°C~">30°C~
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">재고 수</label>
            <div class="col-sm-3">
               <input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품 상태</label>
            <div class="col-sm-5">
               <input type="radio" name="condition" value="두꺼움">두꺼움 
               <input type="radio" name="condition" value="보통">보통 
               <input type="radio" name="condition" value="얇음">얇음
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">이미지</label>
            <div class="col-sm-5">
               <input type="file" name="productImage" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
               <input type="button" class="btn btn-primary" value="등록" onclick="CheckAddProduct()">
            </div>
         </div>
      </form>
   </div>
</body>
</html>