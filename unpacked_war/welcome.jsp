<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
<style>
      @font-face {
      font-family: 'MapoGoldenPier';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
      font-weight: normal;
      font-style: normal;
   }
   .category-list li {
      list-style-type: none;
   }

   .category-list a {
      color: #000;
   }

   body {
      font-family: 'MapoGoldenPier', sans-serif;
      background-image: url('resources/img/mainhomeIMG.jpg');
      background-repeat: no-repeat;
      background-size: cover;
   }
</style>

<script>
   function toggleSubCategories(categoryId) {
      var subCategories = document.getElementById(categoryId);
      if (subCategories.style.display === "block") {
         subCategories.style.display = "none";
      } else {
         subCategories.style.display = "block";
      }
   }
</script>
</head>
<body>

   <%@ include file="menu.jsp"%>

   <hr>
   <main role="main">
   <div class="container-fluid pl-5">
      <div class="row">
         <div class="col-md-3">
            <h1 style="display: block; color: white;">
               OHNEULYE<br>:Na
            </h1>
            <br>
         </div>
         <div class="col-md-9">
            <div class="row">
               <div class="col-md-2 offset-md-10">
                  <h5 style="margin-bottom: 20px; margin-top: 20px;"
                     onmouseover="toggleSubCategories('product-categories')" onclick="event.stopPropagation()"
                  >By Product</h5>
                  <div class="sub-categories" id="product-categories" onclick="event.stopPropagation()">
                     <ul class="category-list">
                        <li><a href="./category/top.jsp">TOP</a></li>
                        <li><a href="./category/pants.jsp">PANTS</a></li>
                        <li><a href="./category/onepiece.jsp">ONEPIECE</a></li>
                        <li><a href="./category/outer.jsp">OUTER</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-2 offset-md-10">
                  <h5 style="margin-bottom: 20px; margin-top: 20px;"
                     onmouseover="toggleSubCategories('weather-categories')" onclick="event.stopPropagation()"
                  >By Weather</h5>
                  <div class="sub-categories" id="weather-categories" onclick="event.stopPropagation()">
                     <ul class="category-list">
                        <li><a href="./category/tem9.jsp">~9°C</a></li>
                        <li><a href="./category/tem10.jsp">10°C~15°C</a></li>
                        <li><a href="./category/tem16.jsp">16°C~20°C</a></li>
                        <li><a href="./category/tem21.jsp">21°C~25°C</a></li>
                        <li><a href="./category/tem26.jsp">26°C~29°C</a></li>
                        <li><a href="./category/tem30.jsp">30°C~</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-3 offset-md-10">
                  <h5 style="margin-bottom: 20px; margin-top: 20px;"
                     onmouseover="toggleSubCategories('color-categories')" onclick="event.stopPropagation()"
                  >By Color</h5>
                  <div class="sub-categories" id="color-categories" onclick="event.stopPropagation()">
                     <ul class="category-list">
                        <li><a href="./category/white.jsp">화이트/아이보리</a></li>
                        <li><a href="./category/pink.jsp">핑크</a></li>
                        <li><a href="./category/orange.jsp">오렌지</a></li>
                        <li><a href="./category/green.jsp">그린</a></li>
                        <li><a href="./category/blue.jsp">블루/네이비</a></li>
                        <li><a href="./category/violet.jsp">바이올렛</a></li>
                        <li><a href="./category/beige.jsp">베이지/브라운</a></li>
                        <li><a href="./category/gray.jsp">그레이/블랙</a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</main>


   <hr>
   <%@ include file="footer.jsp"%>
</body>
</html>