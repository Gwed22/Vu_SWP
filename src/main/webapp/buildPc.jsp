<%-- 
    Document   : buildPc
    Created on : Feb 17, 2023, 5:57:35 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
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
        <link rel="stylesheet" href="css/style1.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif"/>
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
            <div class="build-pc ">
                <div class="container">
                    <form action="#" >                       
                        <div class="col-md-12 item-list">
                            <span class="item-name">CPU</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">Main board</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">RAM</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">SSD</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">HDD</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">VGA</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">PSU</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">CASE</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">Cooling</span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12 item-list">
                            <span class="item-name">Fan </span>
                            <div class="item-list-child" ><a href="#"><i class="fa fa-plus"> Chosse item</i></a></div>
                        </div>
                        <div class="col-md-12">
                                <button class="send" type="submit" name="SendOrder" style="margin-top: 50px;">Order</button>
                        </div>
                    </form>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
