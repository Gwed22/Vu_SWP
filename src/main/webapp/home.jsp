<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- basic -->
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
        <link rel="stylesheet" href="bootstrap.min.css">
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
    </head>
    <!-- body -->
    <body class="main-layout ">
        <jsp:include page="header.jsp"></jsp:include>
            <div class="slider_section row">
                <div class="menu-left col-xl-2 col-lg-12 col-md-12 co-sm-11 ">
                    <ol class="nav-menu-left ">
                        <li class="header-menu"><i class="fa fa-bars" aria-hidden="true" style="color: white; margin-left: 10px;"></i><span class="content-menu">LIST</span></li>
                            <c:forEach items="${listCa}" var="ca" >
                        <li class="list-menu"><a href="category?cid=${ca.getcID()}">${ca.getcName()}</a></li>
                        </c:forEach>
                </ol>
            </div>
            <div id="myCarousel" class="carousel slide banner-main col-xl-9 col-lg-10 col-md-12 co-sm-11" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <a href="/allproduct"> <img class="first-slide" src="images/Artboard 1.png" alt="First slide"> </a>
                    </div>
                    <div class="carousel-item">
                        <a href="/sale"> <img class="second-slide" src="images/Artboard 2.png" alt="Second slide"> </a>

                    </div>
                    <div class="carousel-item">
                        <a href="/sale"> <img class="third-slide" src="images/salebanner.png" alt="Third slide"> </a>

                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <i class='fa fa-angle-left'></i>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <i class='fa fa-angle-right'></i>
                    </a>
                </div>
            </div>
        </div>
        <!-- about -->
        <div class="about">
            <div class="container titlepage">
                <div class="col-lg-12 ">
                    <div class="title" style="margin-top: 50px;">
                        <h2>SIGNATURE PRODUCT</h2>
                    </div>
                </div>
            </div>
            <div class="container content-about">
                <div class="row">
                    <div class="col-xl-4 col-lg-2 col-md-5 co-sm-l2 item_context">
                        <div class="about_img">
                            <figure><img src="https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(5):fill(white)/fptshop.com.vn/Uploads/Originals/2022/6/7/637901982829761519_macbook-pro-m2-2022-xam-1.jpg" alt="img" /></figure>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-2 col-md-7 co-sm-l2 item_context">
                        <div class="about_box">
                            <span>Laptop</span> 
                            <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-2 col-md-7 co-sm-l2 item_context">
                        <div class="about_box about_box_1">
                            <span>Hardware</span>                         
                            <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-2 col-md-5 co-sm-l2 item_context">
                        <div class="about_img">
                            <figure><img src="images/main.jpg" alt="img" style="width: 280px" /></figure>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-2 col-md-5 co-sm-l2 item_context">
                        <div class="about_img">
                            <figure><img src="images/pc.jpg" alt="img" /></figure>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-2 col-md-7 co-sm-l2 item_context">
                        <div class="about_box">

                            <span>Computer</span>
                            <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-2 col-md-7 co-sm-l2 item_context">
                        <div class="about_box about_box_1">
                            <span>Gamming gear</span>
                            <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-2 col-md-5 co-sm-l2 item_context">
                        <div class="about_img">
                            <figure><img src="images/gear.png" alt="img" /></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end about -->
        <!-- brand -->
        <div class="brand">
            <div class="container titlepage">
                <div class="col-lg-12 ">
                    <div class="title">
                        <h2>Laptop</h2>
                    </div>
                </div>
                <div class="col-lg-8">
                    <a class="read-more " href="/category?cid=${1}">See More</a>
                </div>
            </div>
            <div class="brand-bg" style="text-align: center;">
                <div class="container">
                    <div class="row">
                        <c:forEach items="${listL}" var="o" begin="0" end="2">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                <div class="brand_box">
                                    <a href="productdetail?pid=${o.getConID()}"> <img src="${o.getProductImg()}" alt="img" /></a>
                                    <div class="name-product"  >${o.getProductName()}</div>
                                    <c:if test="${o.getSalePrice() == 0}">
                                        <h4 style="margin-top: 10px; font-size: 20px;"><br></h4>
                                        </c:if>
                                        <c:if test="${o.getSalePrice() != 0}">
                                        <h4 style="margin-top: 10px; font-size: 20px;"><del> <fmt:formatNumber type="number" value="${o.getProductPrice()}" pattern="###,###,###.#" /></del> VND</h4>
                                    </c:if>
                                    <h3><strong class="price"> <fmt:formatNumber type="number" value="${o.getProductPrice() - (o.getProductPrice() * o.getSalePrice())}" pattern="###,###,###" /></strong> VND</h3>
                                    <a href="/allproduct" class="btn btn-main">Buy now</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div> 
            <div class="container titlepage laptop">
                <div class="col-lg-12 ">
                    <div class="title">
                        <h2>Computer</h2>
                    </div>
                </div>
                <div class="col-lg-8">                   
                    <a class="read-more " href="/category?cid=${2}">See More</a>
                </div>
            </div>
            <div class="brand-bg">
                <div class="container " style="text-align: center;">
                    <div class="row">
                        <c:forEach items="${listC}" var="o" begin="0" end="2">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                <div class="brand_box">
                                    <a href="productdetail?pid=${o.getConID()}"> <img src="${o.getProductImg()}" alt="img" /></a>
                                    <div class="name-product">${o.getProductName()}</div>
                                    <c:if test="${o.getSalePrice() == 0}">
                                        <h4 style="margin-top: 10px; font-size: 20px; "><br></h4>
                                        </c:if>
                                        <c:if test="${o.getSalePrice() != 0}">
                                        <div style="margin-top: 10px; font-size: 20px; "><del> <fmt:formatNumber type="number" value="${o.getProductPrice()}" pattern="###,###,###.#" /></del> VND</div>
                                    </c:if>
                                    <h3><strong class="price"> <fmt:formatNumber type="number" value="${o.getProductPrice() - (o.getProductPrice() * o.getSalePrice())}" pattern="###,###,###" /></strong> VND</h3>
                                    <a href="/allproduct" class="btn btn-main">Buy now</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>                       
                </div>
            </div>  
        </div>
        <!-- end brand -->
        <!-- clients -->
        <div class="clients">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>What clients say</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clients_red">
            <div class="container">
                <div id="testimonial_slider" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#testimonial_slider" data-slide-to="0" class=""></li>
                        <li data-target="#testimonial_slider" data-slide-to="1" class="active"></li>
                        <li data-target="#testimonial_slider" data-slide-to="2" class=""></li>
                    </ul>
                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item">
                            <div class="testomonial_section">
                                <div class="full center">
                                </div>
                                <div class="full testimonial_cont text_align_center cross_layout">
                                    <div class="cross_inner">
                                        <h3>Due markes<br><strong class="ornage_color">Rental</strong></h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess</i>
                                        </p>
                                        <div class="full text_align_center margin_top_30">
                                            <img src="icon/testimonial_qoute.png">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="carousel-item active">

                            <div class="testomonial_section">
                                <div class="full center">
                                </div>
                                <div class="full testimonial_cont text_align_center cross_layout">
                                    <div class="cross_inner">
                                        <h3>Due markes<br><strong class="ornage_color">Rental</strong></h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess</i>
                                        </p>
                                        <div class="full text_align_center margin_top_30">
                                            <img src="icon/testimonial_qoute.png">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="carousel-item">

                            <div class="testomonial_section">
                                <div class="full center">
                                </div>
                                <div class="full testimonial_cont text_align_center cross_layout">
                                    <div class="cross_inner">
                                        <h3>Due markes<br><strong class="ornage_color">Rental</strong></h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess</i>
                                        </p>
                                        <div class="full text_align_center margin_top_30">
                                            <img src="icon/testimonial_qoute.png">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
        <!-- end footer -->
        <!-- Javascript files-->

    </body>
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
</html>