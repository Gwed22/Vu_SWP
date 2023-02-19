<%-- 
    Document   : header
    Created on : Oct 29, 2022, 12:24:15 PM
    Author     : PC
--%>
<%@page import="com.models.Account"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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

    <body class="main-layout ">

        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="header ">
                <div class="container">
                    <div class="row ">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo">
                                        <a href="/home"><img src="images/logo.png" alt="#"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                            <div class="menu-area">                                
                                <header class="main-menu" >
                                    <form action="search" class="form-search col-md-8">
                                        <input class="form-control col-sm-8" name="txtName"
                                               type="text" 
                                               placeholder="Search" 
                                               aria-label="Search">
                                        <button type="submit" class=" btn-secondary btn-search "><i class="fa fa-search"></i></button>
                                    </form>
                                    <ul class="menu-area-main col-md-12">
                                        <li class="active build"><a href="/account"><i class="fa fa-cogs" aria-hidden="true"></i> BuildPC</a></li>
                                        <li class="active sale"><a href="/account"><i class="fa fa-tags" aria-hidden="true"></i> Sales</a></li>
                                        <c:if test="${sessionScope.acc == null}">
                                            
                                            <li class="active"><a href="/account"><i class="fa fa-user-circle-o" aria-hidden="true" ></i> LogIn</a></li>
                                            </c:if>
                                            <c:if test="${sessionScope.acc != null}">
                                                <c:if test="${sessionScope.IsAdmin == 1}">
                                                <li class="active"><a href="/admin">Admin</a></li>
                                                </c:if>
                                            <li class="active"><a href="history">History</a></li>
                                            <li class="active" style="color: white; font-size: 20px">Hello: ${sessionScope.acc.getLname()}</li>
                                            <li class="active"><a href="logout">Log out</a></li>
                                            </c:if>
                                            
                                            <li class="active cart"><a href="shoppingcart.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a></li>                                        
                                    </ul>
                                </header>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end header inner -->
        </header>

    </body>

</html>
