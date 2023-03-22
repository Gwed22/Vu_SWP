<%-- 
    Document   : brand
    Created on : Oct 27, 2022, 11:07:26 AM
    Author     : PC
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

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
        <link rel="stylesheet" href="css/style9.css">
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
    <!-- body -->

    <body class="main-layout">
        <!-- loader  -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- end header -->


            <!-- brand -->
            <div class="brand">        
            <c:if test="${cid == 1}" >
                <div id="menu-tab" class="row"> 
                    <c:set var="brand" value="${requestScope.data}" />
                    <c:set var="bid" value="${requestScope.bid}" />
                    <ul class="menu">
                        <li><a class="${bid==0?"active":""}" href="allproduct">ALL</a></li>
                            <c:forEach items="${brand}" var="b">
                            <li style="color: black;"><a class="${bid==bid?"active":""}" href="allproduct?bid=${b.getBrandID()}">${b.brandName}</a></li>
                            </c:forEach>
                    </ul>
                </div>
            </c:if>
            <div class="brand-bg row">
                <c:set var="pp" value="${requestScope.pp}" />

                <c:set var="ca" value="${requestScope.caId}" ></c:set>

                <div class="col-xl-2"  style="margin-left: 20px;">
                        <ul>
                            <li>  <a  href="/allproduct">All</a></li>
                        <c:forEach begin="0" end="${1}" var="i">
                        <li><a href="/filter?price=${(i+1)}&cid=${ca}"> ${pp[i]}</a></li>
                        </c:forEach>
                    </ul>

                </div>

                <div class="container" style="text-align: center;">
                    <div class="row">
                        <c:forEach items="${listL}" var="o">
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 margin">
                                <div class="brand_box">
                                    <a href="productdetail?pid=${o.getConID()}"><img class="img" src="${o.getProductImg()}" alt="img" /></a>
                                    <div class="name-product-all">${o.getProductName()}</div>
                                    <c:if test="${o.getSalePrice() == 0}">
                                        <h4 style="margin-top: 10px; "><br></h4>
                                    </c:if>
                                    <c:if test="${o.getSalePrice() != 0}">
                                        <h4 style="margin-top: 10px; "><del> <fmt:formatNumber type="number" value="${o.getProductPrice()}" pattern="###,###,###.#" /></del> VND</h4>
                                    </c:if>
                                    <h3><strong  class="price" > <fmt:formatNumber type="number" value="${o.getProductPrice() - (o.getProductPrice() * o.getSalePrice())}" pattern="###,###,###" /></strong> VND</h3>
                                    <a href="addtocart?pid=${o.getConID()}" class="btn btn-main">Buy now</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>
            </div>
        </div>            

        <!-- end brand -->

        <!-- footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- end footer -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript -->
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });

                $(".zoom").hover(function () {

                    $(this).addClass('transition');
                }, function () {

                    $(this).removeClass('transition');
                });
            });
            function setCheck(obj) {
                var fries = document.getElementsByName('price');
                if ((obj.id == 'g0') && (fries[0].checked == true)) {
                    for (var i = 1; i < fries.length; i++) {
                        fries[i].checked = false;
                    }
                } else {
                    for (var i = 1; i < fries.length; i++) {
                        if (fries[i].checked == true) {
                            fries[0].checked = false;
                            break;
                        }
                    }
                }
                document.getElementById('f2').submit();
            }


        </script>
    </body>

</html>
