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
        <title>Edit Account</title>
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
        <script>
            $(document).ready(function () {

                var patt_email = /^[a-zA-Z]+\w*([.-_]\w+)*\@[a-zA-Z]+\w*([.-_]\w+)*(\.\w+)+$/;
                var patt_phone = /^0[1-9]\d{8,10}$/;

                $("#username").blur(function () {
                    var tk = $.trim($("#username").val());
                    if (tk == "") {
                        $("#usernameHelpBlock").html("User name can not be empty");
                        $("#text-muted").css("color", "red");
                    } else {
                        $("#usernameHelpBlock").html("");
                    }
                });

                $("#address").blur(function () {
                    var tk = $.trim($("#address").val());
                    if (tk == "") {
                        $("#addressHelpBlock").html("Address can not be empty");
                        $("#text-muted").css("color", "red");
                    } else {
                        $("#addressHelpBlock").html("");
                    }
                });

                $("#password1").blur(function () {
                    var mk1 = $.trim($("#password1").val());
                    if (mk1.length < 6 || mk1.length > 20) {
                        $("#password1HelpBlock").html("Password length must be from 6 to 20 characters");
                    } else {
                        $("#password1HelpBlock").html("");
                    }
                });

                $("#phone").blur(function () {
                    var sdt = $.trim($("#phone").val());
                    if (patt_phone.test(sdt) == false) {
                        $("#phoneHelpBlock").html("Phone number is invalid");
                    } else {
                        $("#phoneHelpBlock").html("");
                    }
                });
//
//                $("#button").click(function () {
//                    var sdt = $.trim($("#phone").val());
//                    var tk = $.trim($("#username").val());
//                    var mk2 = $.trim($("#password1").val());
//                    var addr = $.trim($("#address").val());
//
//                    if (tk != "" && addr != "" &&
//                            mk1.length >= 6 || mk1.length <= 20 &&
//                            patt_phone.test(sdt) == true) {
//                        $("#success").html("Successful!");
//                        return true; //false n?u không mu?n chuy?n trang
//                    } else {
//                        $("#fail").html("Input not valid!");
//                        return false;
//                    }
//                });

            });
        </script>
        <style>
        </style>
    </head>
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
                                            <a href="homeadmin"><i class="icon nalika-home"></i></a>
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
                                        <form action="editaccount" method="post">
                                        <%
                                            Account acc = (Account) request.getAttribute("acc");
                                        %>
                                        <input type="text" class="form-control" placeholder="Account ID" value="<%=acc.getAccountID()%>" name="id" id="id" hidden>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="review-content-section">
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                        <input type="text" class="form-control" placeholder="Account Name" value="<%=acc.getName()%>" name="username" required>
                                                        <span id="usernameHelpBlock" class="form-text text-danger"></span>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                                        <input type="text" class="form-control" value="<%=acc.getPassword()%>" placeholder="Password" name="password1" required>
                                                        <span id="password1HelpBlock" class="form-text text-danger"></span>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon"><i class="fa fa-check" aria-hidden="true"></i></span>
                                                        <select name="gender" class="form-control">
                                                                <option  <%= (acc.getGender().equals("Male"))?"selected":""%>>Male</option>
                                                                <option  <%= (acc.getGender().equals("Female"))?"selected":""%>>Female</option>
                                                        </select>
                                                        <span id="genderHelpBlock" class="form-text text-danger"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon"><i class="fa fa-gears" aria-hidden="true"></i></span>
                                                    <select name="role_id" id="role_id" class="form-control">
                                                        <c:forEach items="${listRole}" var="r">
                                                            <option value="${r.getRoleID()}"<c:if test="${r.getRoleID() == acc.getRole_id()}">selected</c:if>>${r.getRoleName()}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <span id="usernameHelpBlock" class="form-text text-danger"></span>
                                                </div>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon"><i class="icon nalika-unlocked" aria-hidden="true"></i></span>
                                                    <select name="sq_id" id="sq_id" class="form-control">
                                                        <c:forEach items="${listSQ}" var="sq">
                                                            <option value="${sq.getSqID()}"<c:if test="${sq.getSqID() == acc.getSq_id()}">selected</c:if>>${sq.getSqContext()}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <span id="usernameHelpBlock" class="form-text text-danger"></span>
                                                </div>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" placeholder="Phone Number" value="<%=acc.getPhone()%>" name="phone" required>
                                                    <span id="phoneHelpBlock" class="form-text text-danger"></span>
                                                </div>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon"><i class="fa fa-location-arrow" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" placeholder="Address" value="<%=acc.getAddress()%>" name="address" required>
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
                                                    <button type="submit" name="btnUpdate" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Save</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    </html>