<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.dao.AccountDAO"%>
<%@page import="com.models.Account"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Add Account</title>
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
    </head>

    <body>
        <jsp:include page="headeradmin.jsp"></jsp:include>
            <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <a href="home"><i class="icon nalika-home"></i></a>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>Account Management</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single pro tab start-->
            <div class="single-product-tab-area mg-b-30">
                <!-- Single pro tab review Start-->
                <div class="single-pro-review-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="review-tab-pro-inner offset-3">
                                    <ul id="myTab3" class="tab-review-design">
                                        <li class="active"><a href="#"><i class="icon nalika-edit" aria-hidden="true"></i> Add New Account</a></li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content custom-product-edit">
                                        <div class="product-tab-list tab-pane fade active in" id="description">
                                            <form action="addaccount" method="post">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="review-content-section">
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                                <input type="text" maxlength="50" class="form-control" placeholder="Account Name" name="username" required>
                                                                <span id="usernameHelpBlock" class="form-text text-danger"></span>
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                                                <input maxlength="20" type="text" class="form-control" placeholder="Password" name="password1" required>
                                                                <span id="password1HelpBlock" class="form-text text-danger"></span>
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt">
                                                                <span class="input-group-addon"><i class="fa fa-check" aria-hidden="true"></i></span>
                                                                <select name="gender" id="gender" class="form-control" required>
                                                                    <option value="Male">Male</option>
                                                                    <option value="Female">Female</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="input-group mg-b-pro-edt">
                                                            <span class="input-group-addon"><i class="fa fa-gears" aria-hidden="true"></i></span>
                                                            <select name="role_id" id="role_id" class="form-control" required>
                                                            <c:forEach items="${listRole}" var="a">
                                                                <option value="${a.getRoleID()}">${a.getRoleName()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="icon nalika-unlocked" aria-hidden="true"></i></span>
                                                        <select name="sq_id" id="sq_id" class="form-control" required>
                                                            <c:forEach items="${listSQ}" var="b">
                                                                <option value="${b.getSqID()}">${b.getSqContext()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                                                        <input type="number" max="99999999999" class="form-control" placeholder="Phone Number" name="phone" required>
                                                        <span id="phoneHelpBlock" class="form-text text-danger"></span>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-location-arrow" aria-hidden="true"></i></span>
                                                        <input type="text" maxlength="100" class="form-control" placeholder="Address" name="address" required>
                                                        <span id="addressHelpBlock" class="form-text text-danger"></span>
                                                    </div>
                                                </div>
                                            </div>                    
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                    <div class="text-right custom-pro-edt-ds">
                                                        <button type="reset" name="btnClear" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Clear</button>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                    <div class="text-right custom-pro-edt-ds">
                                                        <button type="submit" name="btnAdd" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Add</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright-area">

        </div>
        <!-- jquery
                    ============================================ -->
        <script src="js1/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
                    ============================================ -->
        <script src="js1/bootstrap.min.js"></script>
        <!-- wow JS
                    ============================================ -->
        <script src="js1/wow.min.js"></script>
        <!-- price-slider JS
                    ============================================ -->
        <script src="js1/jquery-price-slider.js"></script>
        <!-- meanmenu JS
                    ============================================ -->
        <script src="js1/jquery.meanmenu.js"></script>
        <!-- owl.carousel JS
                    ============================================ -->
        <script src="js1/owl.carousel.min.js"></script>
        <!-- sticky JS
                    ============================================ -->
        <script src="js1/jquery.sticky.js"></script>
        <!-- scrollUp JS
                    ============================================ -->
        <script src="js1/jquery.scrollUp.min.js"></script>
        <!-- mCustomScrollbar JS
                    ============================================ -->
        <script src="js1/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js1/scrollbar/mCustomScrollbar-active.js"></script>
        <!-- metisMenu JS
                    ============================================ -->
        <script src="js1/metisMenu/metisMenu.min.js"></script>
        <script src="js1/metisMenu/metisMenu-active.js"></script>
        <!-- morrisjs JS
                    ============================================ -->
        <script src="js1/sparkline/jquery.sparkline.min.js"></script>
        <script src="js1/sparkline/jquery.charts-sparkline.js"></script>

        <!-- tab JS
                    ============================================ -->
        <script src="js/tab.js"></script>
        <!-- plugins JS
                    ============================================ -->
        <script src="js1/plugins.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="js1/main.js"></script>
    </body>
</html>