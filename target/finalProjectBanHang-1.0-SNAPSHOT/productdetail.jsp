<%-- 
    Document   : productdetail
    Created on : Feb 16, 2023, 11:02:14 PM
    Author     : PC
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- basic -->
        <meta charset="utf-8">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>G3</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style1.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="product-detail">
                <div class="container">
                <c:set value="${product}" var="p"></c:set>
                    <div class="row">
                   <div class="col-xl-6">
                            <img src="${p.productImg}" width="80%" height="50%" alt="alt"/>
                    </div>
                    <div class="col-xl-6">
                        <h1 class="product-name">${p.productName}</h1>
                        <span class="product-desc"><strong>Detailed description: </strong></span>
                        <p class="product-desc"><strong>${p.poductDesc}</strong></p>    
                        <div class="money add-cart-old" >Old Price:<del>  <fmt:formatNumber type="number" value="${p.productPrice * 1.1}" pattern="###,###,###.#" />VND</del></div>
                        <div class="money add-cart" >New Price:  <fmt:formatNumber type="number" value="${p.productPrice}" pattern="###,###,###.#" />VND</div>
                        <a class="send-cart" name="SendOrder" href="addtocart?pid=${p.conID}" >Add to carts</a>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
