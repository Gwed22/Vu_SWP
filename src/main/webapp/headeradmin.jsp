<%-- 
    Document   : headeradmin
    Created on : Nov 9, 2022, 8:54:31 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="left-sidebar-pro">
    <nav id="sidebar" class="">
        <div class="sidebar-header">
            <a href="/admin"><img class="main-logo" src="img/logo/isung.png" alt="" /></a>
            <strong><img src="img/logo/isungsn.png" alt="" /></strong>
        </div>
        <div class="nalika-profile">
            <div class="profile-dtl">
                <a href="#"><img src="img/notification/profile.jpg" alt="" /></a>
                <h2>${sessionScope.acc.getLname()} ${sessionScope.acc.getFname()}<span class="min-dtn"></span></h2>
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
                    <li>
                        <a class="has-arrow" href="#">
                            <i class="icon nalika-table icon-wrap"></i>
                            <span class="mini-click-non">Product</span>
                        </a>
                        <ul class="submenu-angle" aria-expanded="true">
                            <li><a href="#"><span class="mini-sub-pro">Product List</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="#">
                            <i class="icon nalika-user icon-wrap"></i>
                            <span class="mini-click-non">Account</span>
                        </a>
                        <ul class="submenu-angle" aria-expanded="true">
                            <li><a href="#"><span class="mini-sub-pro">Account List</span></a></li>
                            <li><a href="#"><span class="mini-sub-pro">Add Account</span></a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="allconsignment.jsp">
                            <i class="icon nalika-home icon-wrap"></i>
                            <span class="mini-click-non">Warehouse</span>
                        </a>
                        <ul class="submenu-angle" aria-expanded="true">
                            <li><a href="allconsignment"><span class="mini-sub-pro">Consignment List</span></a></li>
                            <li><a href="addconsignment"><span class="mini-sub-pro">Add Consignment</span></a></li>
                            <li><a href="productstatistic"><span class="mini-sub-pro">Product statistic</span></a></li>
                        </ul>
                    </li>
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
                                <div class="col-lg-10 col-md-9 col-sm-12 col-xs-12">
                                    <div class="menu-switcher-pro">
                                        <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                            <i class="icon nalika-menu-task"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-12 col-xs-12">
                                    <div class="header-right-info">
                                        <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                            <li class="nav-item">
                                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                    <i class="icon nalika-user nalika-user-rounded header-riht-inf" aria-hidden="true"></i>
                                                    <!--<span class="admin-name">${sessionScope.acc.getLname()} ${sessionScope.acc.getFname()}</span>-->
                                                    <span class="admin-name">Hello </span>
                                                    <i class="icon nalika-down-arrow nalika-angle-dw nalika-icon"></i>
                                                </a>
                                                <ul role="menu" class="dropdown-header-top author-log dropdown-menu">
                                                    <li><a href="/profile"><span class="icon nalika-user author-log-ic"></span> My Profile</a>
                                                    </li>
                                                    <li><a href="logout"><span class="icon nalika-unlocked author-log-ic"></span> Log Out</a>
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
