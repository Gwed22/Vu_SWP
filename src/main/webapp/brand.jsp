<%-- 
    Document   : brand
    Created on : Oct 27, 2022, 11:07:26 AM
    Author     : PC
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link rel="stylesheet" href="css/style5.css">
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
            <%--<jsp:include page="Category.jsp"></jsp:include>--%>
            <div id="menu-tab" class="row"> 
                <c:set var="brand" value="${requestScope.data}" />
                <c:set var="bid" value="${requestScope.bid}" />
                <ul class="menu">
                    <li><a class="${bid==0?"active":""}" href="allproduct?bid=${0}">ALL</a></li>
                    <c:forEach items="${brand}" var="b">
                    <li style="color: black;"><a class="${bid==bid?"active":""}" href="allproduct?bid=${b.getBrandID()}">${b.brandName}</a></li>
                    </c:forEach>
                </ul>

            </div>
            <div class="brand-bg row">
                <div class="tab-left col-xl-2" style="margin-left: 50px;">
                    <ul class="tab-left-item">
                        <li>Tang Dan</li>
                        <li>Giam Dan</li>
                        <li>Moi nhat</li>
                        <li>Cu nhat</li>
                        <li>Best seller</li>

                    </ul>
                </div>
                <div class="container">
                    <div class="row">
                        <c:forEach items="${listP}" var="o">
                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 margin">
                            <div class="brand_box">
                                <a href="productdetail.jsp"><img class="img" src="${o.getProductImg()}" alt="img" /></a>
                                <span>${o.getProductName()}</span>
                                <h3>$<strong >${o.getProductPrice()}</strong></h3>
                                <a href="order?pid=${o.getProductID()}" class="btn btn-main">Buy now</a>
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
        </script>
    </body>

</html>
