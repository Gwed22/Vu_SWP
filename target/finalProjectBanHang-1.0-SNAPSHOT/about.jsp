<%-- 
    Document   : about
    Created on : Oct 27, 2022, 11:06:32 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- basic -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>ISUNG</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style7.css">
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
        <jsp:include page="header.jsp"></jsp:include>
        <!-- end header -->
        <div class="brand_color">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>About</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- about -->
        <div class="about">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-5 co-sm-l2">
                        <div class="about_img">
                            <figure><img src="images/about.png" alt="img" /></figure>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7 co-sm-l2">
                        <div class="about_box">
                            <span>ISUNG Shop</span>
                            <p>ISUNG Digital Retail Joint Stock Company (hereinafter referred to as ISUNG Retail) is an associate company of Group 4 Vietnam, established on November 10, 2022 with the main brand name ISUNG Shop - Agent Officially authorized by Apple and Samsung in Vietnam at the highest level. </p>

                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7 co-sm-l2">
                        <div class="about_box ">
                            <span>Tienda ISUNG</span>
                            <p>ISUNG Digital Retail Joint Stock Company (en lo sucesivo, ISUNG Retail) es una empresa asociada del Grupo 4 de Vietnam, establecida el 10 de noviembre de 2022 con la marca principal ISUNG Shop - Agente Autorizado oficialmente por Apple y Samsung en Vietnam al más alto nivel
                                Maestro, sálvanos, hicimos un gran trabajo, maestro, obtuvimos una puntuación muy alta, te lo agradecemos, te queremos mucho. </p>

                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-5 col-md-5 co-sm-l2">
                        <div class="about_img">
                            <figure><img src="images/about.png" alt="img" /></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end about -->

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
