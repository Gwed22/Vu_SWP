<%-- 
    Document   : headeradmin
    Created on : Nov 9, 2022, 8:54:31 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Product List</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="css1/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/owl.carousel.css">
        <link rel="stylesheet" href="css1/owl.theme.css">
        <link rel="stylesheet" href="css1/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css1/metisMenu/metisMenu-vertical.css">

        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="css1/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="js1/vendor/modernizr-2.8.3.min.js"></script>
        <style>
            #profile-form {
                position: fixed;
                width: 100vw;
                height: 100vh;
                background-color: rgba(0, 0, 0, 0.6);
                top: 0;
                left: 0;
                display: none;
                align-items: center;
                justify-content: center;
                text-align: center;
                z-index: 999;
            }
            #profile-form-content {
                overflow-y: scroll;
                overflow-x: scroll;
                padding-left: 15px;
                width: 320px;
                height: 240px;
                background-color: white;
                color: black;
                border-radius: 5px;
            }
            #profile-form-content h2 {
                font-size: 20px;
                padding: 12px 0;
                border-bottom: 1px solid #ddd;
                position: relative;
            }
            #profile-form-content h2 span {
                display: block;
                position: absolute;
                height: 30px;
                padding: 0 6px;
                border: 1px solid #ddd;
                right: 12px;
                cursor: pointer;
                top: 50%;
                transform: translateY(-50%);
                line-height: 26px;
                border-radius: 5px;
                background-color: #1b2a47;
                color: white;
                font-size: 15px;
            }
        </style>

    </head>
    <body>
        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">
                    <a href="/homeadmin"><img class="main-logo" src="images/logo5.png" alt="" /></a>
                    <strong><img src="img/logo/isungsn.png" alt="" /></strong>
                </div>
                <div class="nalika-profile">
                    <div class="profile-dtl">
                        <a href="#"><img src="img/notification/profile.jpg" alt="" /></a>
                        <h2>${sessionScope.acc.getName()}<span class="min-dtn"></span></h2>
                    </div>
                    <div class="profile-social-dtl">
                        <ul class="dtl-social">
                            <li><a href="#"><i class="icon nalika-facebook"></i></a></li>
                            <li><a href="#"><i class="icon nalika-twitter"></i></a></li>
                            <li><a href="#"><i class="icon nalika-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <c:if test="${sessionScope.acc.getRole_id() == 1 || sessionScope.acc.getRole_id() == 2}">
                                <li>
                                    <a class="has-arrow" href="salelist">
                                        <i class="icon nalika-table icon-wrap"></i>
                                        <span class="mini-click-non">Sale</span>
                                    </a>
                                    <ul class="submenu-angle" aria-expanded="true">
                                        <li><a href="salelist"><span class="mini-sub-pro">Sale List</span></a></li>
                                        <li><a href="AddSale"><span class="mini-sub-pro">Add Sale</span></a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow" href="allconsignment">
                                        <i class="icon nalika-home icon-wrap"></i>
                                        <span class="mini-click-non">Warehouse</span>
                                    </a>
                                    <ul class="submenu-angle" aria-expanded="true">
                                        <li><a href="allconsignment"><span class="mini-sub-pro">Product List</span></a></li>
                                        <li><a href="addconsignment"><span class="mini-sub-pro">New Consignment</span></a></li>
                                        <li><a href="productstatistic"><span class="mini-sub-pro">Product Statistic</span></a></li>
                                    </ul>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.acc.getRole_id() == 1}">
                                <li>
                                    <a class="has-arrow" href="allaccount">
                                        <i class="icon nalika-user icon-wrap"></i>
                                        <span class="mini-click-non">Account</span>
                                    </a>
                                    <ul class="submenu-angle" aria-expanded="true">
                                        <li><a href="allaccount"><span class="mini-sub-pro">Account List</span></a></li>
                                        <li><a href="addaccount"><span class="mini-sub-pro">Add Account</span></a></li>
                                    </ul>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.acc.getRole_id() == 1 || sessionScope.acc.getRole_id() == 4}">
                                <li>
                                    <a class="has-arrow" href="allorder">
                                        <i class="fa fa-cart-arrow-down icon-wrap"></i>
                                        <span class="mini-click-non">Order</span>
                                    </a>
                                    <ul class="submenu-angle" aria-expanded="true">
                                        <li><a href="allorder"><span class="mini-sub-pro">Order List</span></a></li>
                                        <li><a href="listcontact"><span class="mini-sub-pro">Contact List</span></a></li>
                                    </ul>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.acc.getRole_id() == 1 || sessionScope.acc.getRole_id() == 3}">
                                <li>
                                    <a class="has-arrow" href="revenuestatistic">
                                        <i class="fa fa-money icon-wrap"></i>
                                        <span class="mini-click-non">Accountant</span>
                                    </a>
                                    <ul class="submenu-angle" aria-expanded="true">
                                        <li><a href="revenuestatistic"><span class="mini-sub-pro">Revenue Statistic</span></a></li>
                                    </ul>
                                </li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="logo-pro">
                            <a href="/homeadmin"><img class="main-logo" src="img/logo/isung.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-advance-area">
                <div class="header-top-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="header-top-wraper">
                                    <div class="row">
                                        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                            <div class="menu-switcher-pro">
                                                <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                                    <i class="icon nalika-menu-task"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item">
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <i class="icon nalika-user nalika-user-rounded header-riht-inf" aria-hidden="true"></i>
                                                            <span class="admin-name">${sessionScope.acc.getName()}</span>
                                                            <i class="icon nalika-down-arrow nalika-angle-dw nalika-icon"></i>
                                                        </a>
                                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu">
                                                            <li id="profile"><a href="#"><span class="icon nalika-user author-log-ic"></span> My Profile</a>
                                                            </li>
                                                            <li><a href="/logout"><span class="icon nalika-unlocked author-log-ic"></span> Log Out</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Profile content-->
                <div id="profile-form">
                    <div id="profile-form-content">
                        <h2>Profile<span id="profile-close">Close</span></h2>
                        <br>
                        <div class="row" style="margin: 0 5px 0 5px; text-align: left">
                            <span style="font-size: 20px">- Name: ${sessionScope.acc.getName()}</span><br>
                            <span style="font-size: 20px">- Phone: ${sessionScope.acc.getPhone()}</span><br>
                            <span style="font-size: 20px">- Gender: ${sessionScope.acc.getGender()}</span><br>
                            <span style="font-size: 20px">- Address: ${sessionScope.acc.getAddress()}</span>
                        </div>
                    </div>
                </div>

                <!--responsive part-->
                <div class="mobile-menu-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="mobile-menu">
                                    <nav id="dropdown">
                                        <ul class="mobile-menu-nav">
                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">Product<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">
                                                    <li><a href="">Product List</a></li>
                                                </ul>
                                            </li>
                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">Account<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">
                                                    <li><a href="">Account List</a></li>
                                                    <li><a href="">Add Account</a></li>
                                                </ul>
                                            </li>
                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">Warehouse<span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">
                                                    <li><a href="">Consignment List</a></li>
                                                    <li><a href="">Add Consignment</a></li>
                                                    <li><a href="">Product Statistic</a></li>
                                                </ul>
                                            </li>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script>
                const profilebtn = document.querySelector('#profile');
                profilebtn.addEventListener("click", function () {
                    console.log('click r');
                    document.querySelector('#profile-form').style.display = "flex";
                });
                const profileclose = document.querySelector('#profile-close');
                profileclose.addEventListener("click", function () {
                    document.querySelector('#profile-form').style.display = "none";
                });
            </script>
    </body>
</html>