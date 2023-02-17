<%-- 
    Document   : productdetail
    Created on : Feb 16, 2023, 11:02:14 PM
    Author     : PC
--%>

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
        <link rel="stylesheet" href="css/style3.css">
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
                    <div class="row">
                        <div class="col-xl-6">
                            <img src="img/product/1.jpg" width="80%" height="50%" alt="alt"/>
                        </div>
                        <div class="col-xl-4">
                            <h1 class="product-name">Ten San Pham</h1>
                            <span class="product-desc">Thong so ki thuat</span>
                            <p class="product-desc">dsadasdasdascxzcxzcqwewqeqw</p>
                            
                            <div class="col-xl-8 add-cart">
                                <form class="form" action="#">
                                    <div class="money">Gia tien:  $3000</div>
                                    <button class="send-cart" type="submit" name="SendOrder">Order</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
