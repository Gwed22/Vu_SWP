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
    </head>
    <!-- header -->
    <header>
        <!-- header inner -->
        <div class="header ">
            <div class="header-menu">
                <div class="row">
                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-3 col">
                        <div class="full">
                            <div class="center-desk">
                                <div class="logo">
                                    <a href="/home"><img style="height:  100px;" src="images/logo5.png" alt="#"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-9 col-md-9 col-sm-9" style="margin-top: 20px;" >
                        <div class="menu-area">                                
                            <header class="main-menu" >
                                <form action="search" class="form-search col-xl-8">
                                    <input class="form-control" name="txtName"
                                           type="text" 
                                           placeholder="Search" 
                                           aria-label="Search" style="margin-right: 20px;">
                                    <button type="submit" class=" btn-secondary btn-search "><i class="fa fa-search"></i></button>
                                </form>
                                <ul class="menu-area-main col-md-12" style="margin-left: 30px;">
                                    <li class="active sale"><a <c:if test="${sessionScope.acc == null}">href="/login"</c:if>href="/contact"><i class="fa fa-envelope" aria-hidden="true"></i> Contact</a></li>
                                    <li class="active sale"><a href="/sale"><i class="fa fa-tags" aria-hidden="true"></i> Sales</a></li>
                                        <c:if test="${sessionScope.acc == null}">                                           
                                        <li class="active"><a href="/login"><i class="fa fa-user-circle-o" aria-hidden="true" ></i> LogIn</a></li>
                                        </c:if>
                                    <c:set var="c" value="${sessionScope.size}"></c:set>
                                    <li class="active cart"><a href="shopcart"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart <c:if test="${c != 0}">${c}</c:if></a></li>                                        

                                    <c:if test="${sessionScope.acc != null}">
                                        
                                            <li class="active"><a href="orderhistory"><i class="fa fa-history" aria-hidden="true"></i> History</a></li> 
                                            <li class="active" style="margin-left: 80px; "><a href="editprofile?id=${sessionScope.acc.getAccountID()}"><i class="fa fa-user-circle-o" aria-hidden="true" ></i> ${sessionScope.acc.getName()} </a></li>
                                        <li class="active" style="margin-left: 10px;"> <a href="logout">Log out</a> </li>
                                    </c:if>
                                </ul>
                            </header>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- end header inner -->
    </header>


</html>
