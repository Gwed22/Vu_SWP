<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>G3</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style4.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
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
        <link rel="stylesheet" href="https://kit.fontawesome.com/84f1017064.css" crossorigin="anonymous">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!-- body -->

    <body class="main-layout ">
        <jsp:include page="header.jsp"></jsp:include>

            <div class="slider_section row">
                <div class="menu-left col-xl-2 col-lg-12 col-md-12 co-sm-11 ">
                    <ol class="nav-menu-left ">
                        <li class="header-menu"><span class="content-menu">LIST</span><i class="fa fa-bars" aria-hidden="true" style="color: white"></i></li>
                        <li class="list-menu"><i class="fa fa-desktop" aria-hidden="true"></i><a href="#">PC</a></li>

                        <li class="list-menu"><i class="fa fa-laptop" aria-hidden="true"></i><a href="#">LAPTOP </a> </li>

                        <li class="list-menu"><i class="fa fa-mouse-pointer" aria-hidden="true"></i><a href="#"> MOUSE</a></li>
                        <li class="list-menu"><i class="fa fa-keyboard-o" aria-hidden="true"></i><a href="#">KEYBOARD</a></li>
                        <li class="list-menu"><i class="fa fa-headphones" aria-hidden="true"></i><a href="#"> HEADPHONE</a></li>
                    </ol>
                </div>
                <div id="myCarousel" class="carousel slide banner-main col-xl-9 col-lg-10 col-md-12 co-sm-11" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="first-slide" src="images/banner.jpg" alt="First slide">
                            <div class="container">
                                <div class="carousel-caption relative">
                                    <span>All New Phones </span>
                                    <h1>up to 25% Flat Sale</h1>
                                    <p>It is a long established fact that a reader will be distracted by the readable content
                                        <br> of a page when looking at its layout. The point of using Lorem Ipsum is that</p>
                                    <a class="buynow" href="/allproduct">See more</a>
                                    <ul class="social_icon">
                                        <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="second-slide" src="images/banner.jpg" alt="Second slide">
                            <div class="container">
                                <div class="carousel-caption relative">
                                    <span>All New Phones </span>
                                    <h1>up to 25% Flat Sale</h1>
                                    <p>It is a long established fact that a reader will be distracted by the readable content
                                        <br> of a page when looking at its layout. The point of using Lorem Ipsum is that</p>
                                    <a class="buynow" href="/allproduct">See more</a>
                                    <ul class="social_icon">
                                        <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="third-slide" src="images/banner.jpg" alt="Third slide">
                            <div class="container">
                                <div class="carousel-caption relative">
                                    <span>All New Phones</span>
                                    <h1>up to 25% Flat Sale</h1>
                                    <p>It is a long established fact that a reader will be distracted by the readable content
                                        <br> of a page when looking at its layout. The point of using Lorem Ipsum is that</p>
                                    <a class="buynow" href="/allproduct">See more</a>
                                    <ul class="social_icon">
                                        <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <i class='fa fa-angle-left'></i>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <i class='fa fa-angle-right'></i>
                    </a>
                </div>
            </div>

            <!-- about -->
            <div class="about">
                <div class="container titlepage">
                    <div class="col-lg-12 ">
                        <div class="title">
                            <h2>SIGNATURE PRODUCT</h2>
                        </div>
                    </div>


                </div>
                <div class="container content-about">
                    <div class="row">
                        <div class="col-xl-3 col-lg-2 col-md-5 co-sm-l2 item_context">
                            <div class="about_img">
                                <figure><img src="images/about.png" alt="img" /></figure>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-2 col-md-7 co-sm-l2 item_context">
                            <div class="about_box">
                                <h3>About Us</h3>
                                <span>ISUNG Shop</span>
                                <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-2 col-md-7 co-sm-l2 item_context">
                            <div class="about_box about_box_1">
                                <h3>About Us</h3>
                                <span>ISUNG Shop</span>
                                <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-2 col-md-5 co-sm-l2 item_context">
                            <div class="about_img">
                                <figure><img src="images/about.png" alt="img" /></figure>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-2 col-md-5 co-sm-l2 item_context">
                            <div class="about_img">
                                <figure><img src="images/about.png" alt="img" /></figure>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-2 col-md-7 co-sm-l2 item_context">
                            <div class="about_box">
                                <h3>About Us</h3>
                                <span>ISUNG Shop</span>
                                <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-2 col-md-7 co-sm-l2 item_context">
                            <div class="about_box about_box_1">
                                <h3>About Us</h3>
                                <span>ISUNG Shop</span>
                                <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-2 col-md-5 co-sm-l2 item_context">
                            <div class="about_img">
                                <figure><img src="images/about.png" alt="img" /></figure>
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
                            <h2>Laptop BestSeller</h2>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <a class="read-more " href="/allproduct">See More</a>
                    </div>

                </div>
                <div class="brand-bg">
                    <div class="container">
                        <div class="row">
                        <c:forEach items="${listP}" var="o" begin="0" end="2">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                <div class="brand_box">
                                    <img src="${o.getProductImg()}" alt="img" />
                                    <h3>$<strong class="red">${o.getProductPrice()}</strong></h3>
                                    <span>${o.getProductName()}</span>
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
                        <h2>Computer BestSeller</h2>
                    </div>
                </div>
                <div class="col-lg-8">
                    <a class="read-more " href="/allproduct">See More</a>
                </div>

            </div>
            <div class="brand-bg">
                <div class="container">
                    <div class="row">
                        <c:forEach items="${listP}" var="o" begin="0" end="2">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                <div class="brand_box">
                                    <img src="${o.getProductImg()}" alt="img" />
                                    <h3>$<strong class="red">${o.getProductPrice()}</strong></h3>
                                    <span>${o.getProductName()}</span>
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
        <!-- end clients -->
        <!--         contact 
                <div class="contact">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="titlepage">
                                    <h2>Contact us</h2>
                                </div>
                                <form class="main_form" action="thankyou" method="post">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                            <input class="form-control" placeholder="Your name" type="text" name="name" required>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                            <input class="form-control" placeholder="Email" type="text" name="Email" required>
                                        </div>
                                        <div class=" col-md-12">
                                            <input class="form-control" placeholder="Phone" type="text" name="Phone" required>
                                        </div>
                                        <div class="col-md-12">
                                            <textarea class="textarea" placeholder="Message" name="mess" required></textarea>
                                        </div>
                                        <div class=" col-md-12">
                                            <button class="send" type="submit">Send</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                 end contact -->

        <!-- footer -->
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