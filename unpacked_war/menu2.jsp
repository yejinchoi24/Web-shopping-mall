<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
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
<nav class="navbar navbar-expand">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
        String sessionId = (String) session.getAttribute("SessionId");
    %>

    <div class="container-fluid pl-5">
        <div class="navbar-header">
            <a class="navbar-brand" style="color: black;" href="./welcome.jsp">HOME</a>
        </div>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" style="color: black;" href="<c:url value="/addProduct.jsp"/>">제품 등록 </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: black;" href="<c:url value="/editProduct.jsp?edit=update"/>">제품 수정 </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="color: black;" href="<c:url value="/editProduct.jsp?edit=delete"/>">제품 삭제 </a>
            </li>
            <c:choose>
                <c:when test="${empty sessionId}">
                    <li class="nav-item">
                        <a class="nav-link" style="color: black;" href="<c:url value="/member/loginMember.jsp"/>">로그인</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color: black;" href="<c:url value="/member/addMember.jsp"/>">회원가입 </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item"><a class="nav-link" style="color: black;" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃 </a></li>
                    <li class="nav-item"><a class="nav-link" style="color: black;" href="<c:url value="/member/updateMember.jsp"/>">회원 수정 </a></li>
                    <li class="nav-item"><a class="nav-link" style="color: black;" href="<c:url value="/cart.jsp"/>">장바구니 </a></li>               
                </c:otherwise>
            </c:choose>
            <li class="nav-item">
                <form class="form-inline my-2 my-lg-0" action="search.jsp" method="get">
                  <input class="form-control mr-sm-2" type="search" placeholder="검색" aria-label="Search" name="searchKeyword">
                  <button class="btn btn-outline-light my-2 my-sm-0" type="submit">검색</button>
              </form>
            </li>
        </ul>
    </div>
</nav>
</body>
</html>